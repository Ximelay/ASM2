#include <iostream>

// Объявление внешней ASM-функции
extern "C" int AddAsm(int a, int b);

int main() {
    int a = 15;
    int b = 25;
    
    // Вызов ASM-функции
    int result = AddAsm(a, b);
    
    // Вывод результата
    std::cout << a << " + " << b << " = " << result << std::endl;
    
    return 0;
}