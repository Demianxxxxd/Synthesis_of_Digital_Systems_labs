#include "../../c_src/aes.h"
#include "aes_ha.h"

void aes_ha(uint8_t key[16], uint8_t iv[16], uint8_t inout[16])
{
#pragma HLS INTERFACE s_axilite register port=inout bundle=slv
#pragma HLS INTERFACE s_axilite register port=iv bundle=slv
#pragma HLS INTERFACE s_axilite register port=key bundle=slv
#pragma HLS INTERFACE s_axilite register port=return bundle=slv

    struct AES_ctx ctx;
    uint8_t text[16];
    int i;

    AES_init_ctx_iv(&ctx, key, iv);

    _memcpy(text, inout, 16);

    AES_CTR_xcrypt_buffer(&ctx, text, 16);

    _memcpy(inout, text, 16);

    _memcpy(iv, ctx.Iv, 16);
}
