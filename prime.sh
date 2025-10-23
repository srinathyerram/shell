#!/bin/bash

# Title: Prime Number Checker Script
# Description: Checks if a given positive integer is a prime number.
# Usage: ./is_prime.sh <number>
# Example: ./is_prime.sh 17

# Function to check for primality
is_prime() {
    local N=$1

    # 1. Input validation: Check if input is a non-negative integer
    if ! [[ "$N" =~ ^[0-9]+$ ]]; then
        echo "Error: Input must be a positive integer."
        exit 1
    fi

    # 2. Handle non-positive numbers and 1
    if (( N <= 1 )); then
        echo "$N is NOT prime (Prime numbers must be greater than 1)."
        return 0
    fi

    # 3. Handle 2 (the only even prime)
    if (( N == 2 )); then
        echo "$N IS prime."
        return 0
    fi

    # 4. Handle all other even numbers (> 2)
    if (( N % 2 == 0 )); then
        echo "$N is NOT prime (it is divisible by 2)."
        return 0
    fi

    # 5. Check divisibility from 3 up to the square root of N, only checking odd divisors.
    # This optimization drastically speeds up the check for large numbers.
    I=3
    while (( I * I <= N )); do
        # If N is perfectly divisible by I, it is not prime
        if (( N % I == 0 )); then
            echo "$N is NOT prime (divisible by $I)."
            return 0
        fi
        # Increment the divisor by 2 to skip even numbers (since we already handled N % 2 == 0)
        I=$((I + 2))
    done

    # If the loop finishes without finding any divisors, the number is prime
    echo "$N IS prime."
    return 0
}

# --- Main execution ---

# Check if an argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 <number>"
    echo "Please provide a positive integer to check."
    exit 1
fi

# Call the function with the first command-line argument
is_prime "$1"
