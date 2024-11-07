
#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    std::cout << "Add: " << calc.Add(10.5, 5.3) << std::endl;
    std::cout << "Sub: " << calc.Sub(10.5, 5.3) << std::endl;
    return 0;
}

