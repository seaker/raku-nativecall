#include <iostream>
#include <string>

extern "C"
void talk(const char* name) {
	std::cout << "Hi, " << name << std::endl;
}
