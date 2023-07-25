///////////////////////////////////////////////////////////////////////////////
/// \file uart_drv.c
/// \date 11/03/2020
//////////////////////////////////////////////////////////////////////////////

#include "uart_drv.h"


void uart__set_dlab(uart_t *handle)
{
    *(handle->lcr_) |= 0x80;
}

void uart__reset_dlab(uart_t *handle)
{
    *(handle->lcr_) &= ~(0x80);
}

void uart__set_IERbit(uart_t *handle, uint8_t nbit)
{
    handle->ops_->reset_dlab(handle);
    *(handle->ier_) |= (0x1 << nbit);
}

void uart__reset_IERbit(uart_t *handle, uint8_t nbit)
{
    handle->ops_->reset_dlab(handle);
    *(handle->ier_) &= ~(0x1 << nbit);
}

void uart__set_irq_callback(uart_t *handle, void (*fptr)(void))
{
    handle->irq_callback = fptr;
}

void uart__enable_interrupt(uart_t *handle, ier_bits_t interrupt)
{
    handle->ops_->set_IERbit(handle, interrupt);
}

void uart__disable_interrupt(uart_t *handle, ier_bits_t interrupt)
{
    handle->ops_->reset_IERbit(handle, interrupt);
}

void uart__send_char(uart_t *handle, const char c)
{
    while ((*(handle->lsr_) & 0x20) == 0x0)
    {
    }
    *(handle->thr_) = c;
}

char uart__get_char(uart_t *handle)
{
    while ((*(handle->lsr_) & 0x1) != 0x1)
    {
    }
    return *(handle->rbr_);
}
