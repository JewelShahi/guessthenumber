#!/bin/bash

# Generate a random number between 1 and 100
target_number=$((RANDOM % 100 + 1))

echo "Welcome to the Number Guessing Game!"
echo "Try to guess the number between 1 and 100."

# Initialize user's guess
user_guess=0
attempts=0

while [[ $user_guess -ne $target_number ]]; do
  read -p "Enter your guess: " user_guess

  if [[ $user_guess -lt $target_number ]]; then
    echo "Try a higher number."
  elif [[ $user_guess -gt $target_number ]]; then
    echo "Try a lower number."
  fi

  attempts=$((attempts + 1))
done

echo "Congratulations! You guessed the number $target_number in $attempts attempts."
