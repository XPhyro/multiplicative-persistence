#define ITERATION_COUNT 10000000
#define MAX_NUM 277777788888899

#include <iostream>
#include <chrono>
// #include "time.h"

int mul_pers(unsigned long long x);
int mul_pers_new(unsigned long long x);
int add_pers(unsigned long long x);

int main()
{
    std::cout << "Iteration count: " << ITERATION_COUNT << '\n';
    {
        // clock_t diff;
        // clock_t begin = clock();
        auto t0 = std::chrono::high_resolution_clock::now();

        for(unsigned int i = 0; i < ITERATION_COUNT; i++)
        {
            mul_pers(MAX_NUM);
        }

        auto t1 = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> t = t1 - t0;
        std::cout << "Multiplicative persistence (old): " << t.count() / 1000.0 << "s\n";
        // diff = clock() - begin;
        // long msdiff = diff * 1000 / CLOCKS_PER_SEC;
        // std::cout << "Evaluated puzzle in " << msdiff / 1000 << "." << msdiff % 1000 << " seconds.\n";
    }

    {
        auto t0 = std::chrono::high_resolution_clock::now();

        for(unsigned int i = 0; i < ITERATION_COUNT; i++)
        {
            mul_pers_new(MAX_NUM);
        }

        auto t1 = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> t = t1 - t0;
        std::cout << "Multiplicative persistence (old): " << t.count() / 1000.0 << "s\n";
    }

    {
        auto t0 = std::chrono::high_resolution_clock::now();

        for(unsigned int i = 0; i < ITERATION_COUNT; i++)
        {
            add_pers(MAX_NUM);
        }

        auto t1 = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> t = t1 - t0;
        std::cout << "Additive persistence            : " << t.count() / 1000.0 << "s\n";
    }
}

int mul_pers(unsigned long long x)
{
    unsigned long long m = x % 10;
    
    if(m == x)
        return 0;

    for(;;) {
        x /= 10;

        if(!x)
            return mul_pers(m) + 1;

        m *= x % 10;
    }
}

int mul_pers_new(unsigned long long x)
{
    if(x < 10)
        return 0;

    int p = 1;
    while(x) {
        p *= x % 10;
        x /= 10;
    }

    return mul_pers_new(p) + 1;
}

int add_pers(unsigned long long x)
{
    if(x < 10)
        return 0;

    int s = 0;
    while(x) {
        s += x % 10;
        x /= 10;
    }

    return add_pers(s) + 1;
}
