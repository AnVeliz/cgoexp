#!/bin/bash

rm -f libmy.{o,a} test
gcc -Wall -Wextra -Werror -c -o libmy.o ./pkg/clib/my.cpp && ar rcs libmy.a libmy.o
go build --ldflags '-extldflags "-static"' -o test main.go