#!/usr/bin/env python3
# Computes the multiplicative persistence of a given number.


import time


MAX_NUM = 277777788888899


def persistence_str(n):
    s = str(n)
    if len(s) == 1:
        return 0

    m = 1
    for i in s:
        m *= int(i)

    return persistence_str(m) + 1


def persistence_int(n):
    m = n % 10
    if m == n:
        return 0

    while True:
        n = n // 10

        if not n:
            return persistence_int(m) + 1

        m *= n % 10


t0 = time.time()

for i in range(1000000):
    persistence_str(MAX_NUM)

t1 = time.time()

for i in range(1000000):
    persistence_int(MAX_NUM)

t2 = time.time()

print(t2 - t1)
print(t1 - t0)
