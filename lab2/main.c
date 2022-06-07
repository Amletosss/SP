#include <stdio.h>

int main() 
{
    // Массив
    unsigned short mass[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    // Проход по каждому эл. массива
    for (int i = 0; i < 10; i++) 
    {
        // Старшие биты инвертированные
        unsigned short h_byte = ~mass[i] & 0xff00;
        // Младшие биты оригинальные 
        unsigned short l_byte = mass[i] & 0x00ff;
        // Совмещение сташих и младших битов и перезапись эл. массива
        mass[i] = h_byte | l_byte;
    }

    // Сумма четных элементов
    int sum = 0;
    // Проход по массиву через один
    for (int i = 0; i < 10; i += 2)
        // Прибавление у сумме эл. массива
        sum += mass[i];

    // Вывод суммы
    printf("SUM: %d\n", sum);

    return 0;
}
