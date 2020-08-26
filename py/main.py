#!/usr/bin/env python3


import time


MAX_MUL = 277777788888899
MAX_ADD = 199 # C++ cannot natively handle 19999999999999999999999
ITERATION_COUNT = 10000000


def mul_pers(x):
    if (m := x % 10) == x:
        return 0

    while True:
        x //= 10

        if x == 0:
            return mul_pers(m) + 1

        m *= x % 10


def mul_pers_new(x):
    if x < 10:
        return 0

    p = 1
    while x != 0:
        p *= x % 10
        x //= 10

    return mul_pers_new(p) + 1


def add_pers(x):
    if x < 10:
        return 0

    s = 0
    while x != 0:
        s += x % 10
        x //= 10

    return add_pers(s) + 1


t0 = time.time()

for i in range(ITERATION_COUNT):
    mul_pers(MAX_MUL)

t1 = time.time()

for i in range(ITERATION_COUNT):
    mul_pers_new(MAX_MUL)

t2 = time.time()

for i in range(ITERATION_COUNT):
    add_pers(MAX_ADD)

t3 = time.time()

print(f"Iteration count: {ITERATION_COUNT}")
print(f"Multiplicative persistence (old): {t1 - t0}s")
print(f"Multiplicative persistence (new): {t2 - t1}s")
print(f"Additive persistence            : {t3 - t2}s")
