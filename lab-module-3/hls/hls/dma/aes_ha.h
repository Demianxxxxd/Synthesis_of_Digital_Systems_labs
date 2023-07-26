#ifndef _TOP_H_
#define _TOP_H_

#include "stdint.h"

#define DIRECT_MEMORY

void aes_ha(uint8_t key[16], uint8_t iv[16], uint8_t* in, uint8_t* out, int length);

#endif
