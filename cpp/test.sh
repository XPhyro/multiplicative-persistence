#!/usr/bin/env sh

execute() {
    ./program.o"$1".x86_64
}

gets() {
    tail -n +2 | sed -e 's/.*\s//g' -e 's/s$//' | sed -E 's/([+-]?[0-9.]+)[eE]\+?(-?)([0-9]+)/(\1*10^\2\3)/g'
}

ntable() {
    case "$1"
    in
        0) echo 50;;
        1) echo 100;;
        2) echo 30000;;
        3) echo 30000;;
    esac
}

itable() {
    case "$1"
    in
        0) 
            case "$2"
            in
                0) echo "$O00";;
                1) echo "$O01";;
                2) echo "$O02";;
            esac ;;
        1) 
            case "$2"
            in
                0) echo "$O10";;
                1) echo "$O11";;
                2) echo "$O12";;
            esac ;;
        2) 
            case "$2"
            in
                0) echo "$O20";;
                1) echo "$O21";;
                2) echo "$O22";;
            esac ;;
        3) 
            case "$2"
            in
                0) echo "$O30";;
                1) echo "$O31";;
                2) echo "$O32";;
            esac ;;
    esac
}

logvar() {
    case "$1"
    in
        0) 
            O00="$( echo "$2" )"
            O01="$( echo "$3" )"
            O02="$( echo "$4" )"
            ;;
        1) 
            O10="$( echo "$2" )"
            O11="$( echo "$3" )"
            O12="$( echo "$4" )"
            ;;
        2) 
            O20="$( echo "$2" )"
            O21="$( echo "$3" )"
            O22="$( echo "$4" )"
            ;;
        3) 
            O30="$( echo "$2" )"
            O31="$( echo "$3" )"
            O32="$( echo "$4" )"
            ;;
    esac
}

logadd() {
    line0="$( echo "$2" | head -n 1 )"
    line1="$( echo "$2" | head -n 2 | tail -n 1 )"
    line2="$( echo "$2" | tail -n 1 )"

    logvar "$1" "$( echo "scale = 15; $( itable "$1" 0 ) + $line0" | bc )" "$( echo "scale = 15; $( itable "$1" 1 ) + $line1" | bc )" "$( echo "scale = 15; $( itable "$1" 2 ) + $line2" | bc )"
}

logav() {
    for i in {0..3}
    do
        logvar "$i" "$( echo "scale = 15; $( itable "$i" 0 ) / $( ntable "$i" ).0" | bc )" "$( echo "scale = 15; $( itable "$i" 1 ) / $( ntable "$i" ).0" | bc )" "$( echo "scale = 15; $( itable "$i" 2 ) / $( ntable "$i" ).0" | bc )"
    done
}

O00="0"
O01="0"
O02="0"
O10="0"
O11="0"
O12="0"
O20="0"
O21="0"
O22="0"
O30="0"
O31="0"
O32="0"

for i in {0..3}
do
    echo "Testing -O$i"
    n="$( ntable "$i" )"

    : "$(( j = 0 ))"
    while [ "$j" -lt "$n" ]
    do
        # echo "Iteration $j"
        out="$( echo "$( execute "$i" | gets )" )"
        # echo "$out"
        logadd "$i" "$out"
        : "$(( j = j + 1 ))"
    done
    echo ""
done

logav

echo ""
for i in {0..3}
do
    echo "-O$i results"
    echo "Multiplicative persistence (old): $( itable "$i" 0 )"
    echo "Multiplicative persistence (new): $( itable "$i" 1 )"
    echo "Additive persistence            : $( itable "$i" 2 )"
done
