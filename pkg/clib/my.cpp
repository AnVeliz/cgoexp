#include <stdio.h>

extern "C" int testX(int input) {
    printf("Hello world from C++\n");
    return input * 2;
}