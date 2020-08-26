# Persistence of a number
This project aims to compute multiplicative and additive persistences of persistent-wise important numbers, where the persistence of a number is defined as how often you have to replace the number by the sum (for additive persistence) or product (for multiplicative persistence) of its digits to reach a single-digit number. The persistence functions are defined from non-negative integers to non-negative integers.

# Results
|                              | Iteration Count | Old Multiplicative (s) | New Multiplicative (s) | Additive (s) |  Timing Method  |
|:----------------------------:|:---------------:|:----------------------:|:----------------------:|:------------:|:---------------:|
|   Python 3.8.5 [GCC 10.1.0]  |  10,000,000 x 3 |         56.801         |         63.537         |     7.344    |       time      |
| C++ 201402L -O0 [G++ 10.2.0] |  10,000,000 x 5 |          2.150         |          0.664         |     0.497    | chrono high_res |
| C++ 201402L -O1 [G++ 10.2.0] | 10,000,000 x 10 |          1.151         |          0.327         |     0.237    | chrono high_res |
| C++ 201402L -O2 [G++ 10.2.0] | 10,000,000 x 20 |         7.0e-08        |         2.9e-08        |    2.8e-08   | chrono high_res |
| C++ 201402L -O3 [G++ 10.2.0] | 10,000,000 x 20 |         6.0e-08        |         2.9e-08        |    2.8e-08   | chrono high_res |
