#define ITERATION_COUNT 1000000
#define MAX_NUM 277777788888899

#include <iostream>
#include <chrono>

int persistence_int(long long n);

int main()
{
    auto t0 = std::chrono::high_resolution_clock::now();

    for(unsigned int i = 0; i < ITERATION_COUNT; i++)
    {
        persistence_int(MAX_NUM);
    }

    auto t1 = std::chrono::high_resolution_clock::now();

    std::chrono::duration<double, std::milli> t = t1 - t0;

    std::cout << t.count() / 1000.0 << '\n';
}

int persistence_int(long long n)
{
    long long m = n % 10;
    
    if(m == n)
    {
        return 0;
    }

    for(;;)
    {
        n /= 10;

        if(!n)
        {
            return persistence_int(m) + 1;
        }

        m *= n % 10;
    }
}
