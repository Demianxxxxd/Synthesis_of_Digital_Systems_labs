////////////////////////////////////////////////////////////////////////////////
/// \file aes_ha_drv.h
/// \date 11/30/2022
/// \author JG
/// \brief Custom driver for AES hardware accelerator. Utilizes generated
///        Xilinx headers
////////////////////////////////////////////////////////////////////////////////

#ifndef __AES_HA_DRV_H__
#define __AES_HA_DRV_H__

#include "xaes_ha.h"

int aes_ha_test(XAes_ha *iaes);

#endif // __AES_HA_DRV_H__
