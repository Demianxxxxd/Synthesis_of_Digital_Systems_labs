////////////////////////////////////////////////////////////////////////////////
/// \file aes_ha_drv.c
/// \date 11/30/2022
/// \author JG
/// \brief Custom driver for AES hardware accelerator. Utilizes generated
///        Xilinx headers
////////////////////////////////////////////////////////////////////////////////

#include "xaes_ha.h"
#include "xaes_ha_hw.h"

#include "cust_print.h"

#include "aes_ha_drv.h"

////////////////////////////////////////////////////////////////////////////////
/// \brief Sanity check test function.
/// \param iaes Pointer to an initiliazed low level driver struct (generated from HLS)
/// \return 0 on pass != 0 on fail
int aes_ha_test(XAes_ha *iaes)
{
    int ret = 0;

    uint8_t key[16] = {
        0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c
    }; ///< (private/secure) key (In a real application, do not put this in plain source code)
    uint8_t iv[16] = {
        0xf0, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8, 0xf9, 0xfa, 0xfb, 0xfc, 0xfd, 0xfe, 0xff
    }; ///< (public) key. Assume this got transmitted along the encrypted message
    uint8_t plain_text[16] = { 0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96,
                               0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17, 0x2a };
    uint8_t encrypt_text[16] = { 0x87, 0x4d, 0x61, 0x91, 0xb6, 0x20, 0xe3, 0x26,
                                 0x1b, 0xef, 0x68, 0x64, 0x99, 0x0d, 0xb6, 0xce };

    uint8_t d_i[16];
    uint8_t d_e[16];
    uint8_t d_d[16];

    for (int i = 0; i < 16; ++i)
        d_i[i] = plain_text[i];

    custom_print_string((void *)ETISS_LOGGER_ADDR, "AES_HA write key ...\n");
    XAes_ha_Write_key_Bytes(iaes, 0, key, 16);

    /* Encrypt */
    custom_print_string((void *)ETISS_LOGGER_ADDR, "AES_HA write iv ...\n");
    XAes_ha_Write_iv_Bytes(iaes, 0, iv, 16);

#ifndef AES_DIRECT_MEMORY
    custom_print_string((void *)ETISS_LOGGER_ADDR, "AES_HA write io ...\n");
    XAes_ha_Write_inout_r_Bytes(iaes, 0, (uint8_t *)plain_text, 16);
    custom_print_string((void *)ETISS_LOGGER_ADDR, "AES_HA read io ...\n");
    XAes_ha_Read_inout_r_Bytes(iaes, 0, d_i, 16);
#else
    XAes_ha_Set_in_r(iaes, (u32)plain_text);
    XAes_ha_Set_out_r(iaes, (u32)d_e);
    XAes_ha_Set_length_r(iaes, 16);
#endif
    while (!XAes_ha_IsReady(iaes))
    {
        asm volatile("nop");
    }
    custom_print_string((void *)ETISS_LOGGER_ADDR, "AES_HA self encrypt ...\n");
    XAes_ha_Start(iaes);
    while (!XAes_ha_IsDone(iaes))
    {
        asm volatile("nop");
    }

    for (int i = 0; i < 16; ++i)

#ifndef AES_DIRECT_MEMORY
        XAes_ha_Read_inout_r_Bytes(iaes, 0, d_e, 16);
#else
        XAes_ha_Set_in_r(iaes, (u32)d_e);
    XAes_ha_Set_out_r(iaes, (u32)d_d);
    XAes_ha_Set_length_r(iaes, 16);
#endif

    //printf("d_e: ");
    for (int i = 0; i < 16; ++i)
    {
        //printf("%.2x ", d_e[i]);
        ret |= (encrypt_text[i] != d_e[i]);
    }
    //printf("\n");

    /* Decrypt */
    XAes_ha_Write_iv_Bytes(iaes, 0, iv, 16);

    while (!XAes_ha_IsReady(iaes))
    {
        asm volatile("nop");
    }
    custom_print_string((void *)ETISS_LOGGER_ADDR, "AES_HA self decrypt ...\n");
    XAes_ha_Start(iaes);
    while (!XAes_ha_IsDone(iaes))
    {
        asm volatile("nop");
    }

#ifndef AES_DIRECT_MEMORY
    XAes_ha_Read_inout_r_Bytes(iaes, 0, d_d, 16);
#endif
    //printf("d_d: ");
    for (int i = 0; i < 16; ++i)
    {
        //printf("%.2x ", d_d[i]);
        ret |= (plain_text[i] != d_d[i]);
    }
    //printf("\n");

    return ret;
}
