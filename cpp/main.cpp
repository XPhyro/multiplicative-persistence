#define ITERATION_COUNT 10000000
#define MAX_MUL 277777788888899
#define MAX_ADD 199

#include <iostream>
#include <chrono>

volatile int mul_pers(unsigned long long x);
volatile int mul_pers_new(unsigned long long x);
volatile int add_pers(unsigned long long x);

int main()
{
    std::cout << "Iteration count: " << ITERATION_COUNT << '\n';
    {
        auto t0 = std::chrono::high_resolution_clock::now();

        for(unsigned int i = 0; i < ITERATION_COUNT; i++)
        {
            mul_pers(MAX_MUL);
        }

        auto t1 = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> t = t1 - t0;
        std::cout << "Multiplicative persistence (old)        : " << t.count() / 1000.0 << "s\n";
        //std::cout << mul_pers(MAX_MUL) << '\n';
    }

    {
        auto t0 = std::chrono::high_resolution_clock::now();

        for(unsigned int i = 0; i < ITERATION_COUNT; i++)
        {
            mul_pers_new(MAX_MUL);
        }

        auto t1 = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> t = t1 - t0;
        std::cout << "Multiplicative persistence (new)        : " << t.count() / 1000.0 << "s\n";
        // std::cout << mul_pers_new(MAX_MUL) << '\n';
    }

    {
        auto t0 = std::chrono::high_resolution_clock::now();

        for(unsigned int i = 0; i < ITERATION_COUNT; i++)
        {
            add_pers(MAX_ADD);
        }

        auto t1 = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> t = t1 - t0;
        std::cout << "Additive persistence                    : " << t.count() / 1000.0 << "s\n";
        // std::cout << add_pers(MAX_ADD) << '\n';
    }
}

volatile int mul_pers(unsigned long long x)
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

volatile int mul_pers_new(unsigned long long x)
{
    if(x < 10)
        return 0;

    unsigned long long p = 1;
    while(x) {
        p *= x % 10;
        x /= 10;
    }

    return mul_pers_new(p) + 1;
}

volatile int add_pers(unsigned long long x)
{
    if(x < 10)
        return 0;

    unsigned long long int s = 0;
    while(x) {
        s += x % 10;
        x /= 10;
    }

    return add_pers(s) + 1;
}
