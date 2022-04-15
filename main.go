package main

import "fmt"

/*
#cgo LDFLAGS: -L./ -lmy
#include "pkg/clib/my.h"
*/
import "C"

func main() {
	fmt.Println("Hello World")
	f := int(C.testX(C.int(2)))
	fmt.Println(f)
	fmt.Println("bye")
}
