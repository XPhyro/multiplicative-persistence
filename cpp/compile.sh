#!/usr/bin/env sh

for i in {0..3}
do
    echo "Compiling with -O$i"
    g++ -O"$i" main.cpp -o program.o"$i".x86_64
    g++ -O"$i" main.cpp -S -o main.o"$i".s
done

echo "Done"
