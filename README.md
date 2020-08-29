# Persistence of a number
This project aims to compute multiplicative and additive persistences of persistent-wise important numbers, where the persistence of a number is defined as how often you have to replace the number by the product (for multiplicative persistence) or sum (for additive persistence) of its digits to reach a single-digit number. The persistence functions are defined from non-negative integers to non-negative integers.

# Results
|                              |   Iteration Count   | Average Time For Old Multiplicative (s) | Average Time For New Multiplicative (s) | Average Time For Additive (s) |  Timing Method  |
|:----------------------------:|:-------------------:|:---------------------------------------:|:---------------------------------------:|:-----------------------------:|:---------------:|
|   Python 3.8.5 [GCC 10.1.0]  |    10,000,000 x 3   |                  56.801                 |                  63.537                 |             7.344             |       time      |
| C++ 201402L -O0 [G++ 10.2.0] |   10,000,000 x 50   |                 2.152624                |                2.2091192                |           0.23953914          | chrono high_res |
| C++ 201402L -O1 [G++ 10.2.0] |   10,000,000 x 100  |                1.1599231                |                1.1129887                |           0.10997683          | chrono high_res |
| C++ 201402L -O2 [G++ 10.2.0] | 10,000,000 x 30,000 |               8.3320133e-8              |               3.6635966e-8              |          3.4835833e-8         | chrono high_res |
| C++ 201402L -O3 [G++ 10.2.0] | 10,000,000 x 30,000 |               8.4350033e-8              |               3.7572433e-8              |          3.4815666e-8         | chrono high_res |

To test yourself, either interpret or compile and execute the code yourself, or use the shell scripts provided to automatise the process. There is currently only shell scripts provided for C++. 

compile.sh would compile the code and test.sh would test it. To do both in one step, use do.sh.
