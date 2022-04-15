#!/bin/bash

rm -f my.{o,a} test
g++ -Wall -c -o my.o ./clib/smth.cpp && ar rcs libsmth.a libsmth.o
go build --ldflags '-extldflags "-static"' -o test main.go && rm -f libsmth.{o,a}