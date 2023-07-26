#include "aes_ha.h"
#include "../../c_src/aes.h"

extern void _memcpy(uint8_t * dst, const uint8_t* src, unsigned int num);

void aes_ha(uint8_t key[16], uint8_t iv[16], uint8_t* in, uint8_t* out, int length)
{
#pragma HLS INTERFACE m_axi depth=8832 port=out offset=slave bundle=mst
#pragma HLS INTERFACE m_axi depth=8832 port=in offset=slave bundle=mst
#pragma HLS INTERFACE s_axilite register port=length bundle=slv
#pragma HLS INTERFACE s_axilite register port=iv bundle=slv
#pragma HLS INTERFACE s_axilite register port=key bundle=slv
#pragma HLS INTERFACE s_axilite register port=return bundle=slv

	struct AES_ctx ctx;
	int i,k;
	uint8_t text[16]; // need some buffer to hold between input and output

	AES_init_ctx_iv(&ctx, key, iv);

	for(i = 0; i < length; i+=16)
	{
		_memcpy(text, &(in[i]), 16);

		AES_CTR_xcrypt_buffer(&ctx, text, 16);

		_memcpy(&(out[i]), text, 16);
	}

	_memcpy(iv, ctx.Iv, 16);
}
