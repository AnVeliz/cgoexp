#include <iostream>

extern "C" int testX(int input) {
    std::cout << "Hello world from C++\n";
    return input * 2;
}