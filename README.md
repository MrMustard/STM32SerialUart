# stm32SerialUart
SerialUart library for stm32
# SerialUartSTM32
## Library for receive any length string Using interrupt

### 1. Send Strings
#### 1.1 Redirect to printf some uart

you can see this post first:
https://forum.digikey.com/t/easily-use-printf-on-stm32/20157

You can redirect printf function to some uart, you have to do the next steps

#### 1) config the uart 
#### 2) Add: #include "stdio.h"
#### 3) into stido.h copy the next code :
```
#ifdef __GNUC__ 
#define PUTCHAR_PROTOTYPE int __io_putchar(int ch)

#else

#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)

#endif

PUTCHAR_PROTOTYPE
{
  HAL_UART_Transmit(&huart1, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
  return ch;
}
````

#### 4) paste the code in the main OR IN THE .c of your library

you have to put the correct handle in the hal transmit function.

if you made all right you can use print f to send strings.

You can use the printf normally 

Note: Printf can only work with one usort, if you want to send data from other uart, you need to use hardcode method

## 1.2. Send simple string

You can send string uing a simple hal transmit fucntion and a pointer 

````
void SerialUartSendString(char *ptr)
{
uint16_t DataLen = strlen(ptr);
HAL_UART_Transmit(&huart1, (const uint8_t *)ptr, DataLen, HAL_MAX_DELAY);
}
````
## 1.3 Send varaible using simple string
``````
    char Buffer[50];
	sprintf(Buffer, Text,var);
	SerialUartSendString(Buffer);
``````

## Receive albitary string from uart
