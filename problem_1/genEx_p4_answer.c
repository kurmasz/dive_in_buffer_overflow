#include <stdio.h>

char ebuff[]=
"John Adams" /* Desired name */
"\x0" /* Null terminator */
"234567890123456789012" /* characters just to take up space */
"\xa0\x86\x01" /* salary */
"\n"; /* enter*/

int main(void) {
    int i;
    for (i = 0; i < sizeof(ebuff); i++) { /*print each character*/
        printf("%c", ebuff[i]);
    }
    return 0;
}