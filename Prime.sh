#!/bin/bash

# Function to check if a number is prime
is_prime() {
    num=$1
    # 1 is not a prime number
    if [ $num -eq 1 ]; then
        return 1
    fi
    # Loop through numbers from 2 to half of the number
    for (( i=2; i<=num/2; i++ )); do
        if [ $((num % i)) -eq 0 ]; then
            return 1 # Not a prime number
        fi
    done
    return 0 # Prime number
}

# Loop through numbers from 1 to 21
for (( number=1; number<=21; number++ )); do
    is_prime $number
    if [ $? -eq 0 ]; then
        echo "$number is prime"
    fi
done
