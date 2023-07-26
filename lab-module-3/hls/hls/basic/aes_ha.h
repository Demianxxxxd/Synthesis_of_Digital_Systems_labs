#ifndef _TOP_H_
#define _TOP_H_

#include "stdint.h"

void aes16_bidir(uint8_t key[16], uint8_t iv[16], uint8_t inout[16]);

extern void _memcpy(uint8_t * dst, const uint8_t* src, unsigned int num);
#endif
