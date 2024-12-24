# Minimum Value Finder

## Overview
This Dart program allows users to input a list of numbers and find the minimum value from the list. The program continuously accepts numbers from the user until the user types 'q' or 'Q'. If valid numbers are entered, it calculates and displays the smallest value in the list. If no valid input is provided, it will notify the user.

## Code Explanation
Collecting Numbers: The program uses a(Do -While) loop to continuously prompt the user for numbers. It checks if the input is numeric or a quit command ('q').

Finding the Minimum: Once the user decides to quit, the program calculates the minimum value using reduce() for efficient comparison across the list of numbers.
