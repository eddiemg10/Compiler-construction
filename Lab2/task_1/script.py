"""
The program below solves the FizzBuzz problem
FizzBuzz is a common coding interview question
"""


 # Loop from 1 to 100
for i in range(1, 101):
    # Check if the number is divisible by both 3 and 5
    if i % 3 == 0 and i % 5 == 0:
        print(f'FizzBuzz: {i}')  # Print FizzBuzz if number is divisible by both 3 and 5
    # Check if the number is divisible by 3
    elif i % 3 == 0:
        print(f'Fizz: {i}')  # Print Fizz if number is only divisible by 3
    # Check if the number is divisible by 5
    elif i % 5 == 0:
        print(f'Buzz: {i}')  # Print Buzz if number is only divisible by 5
    else:
        print(i)
# End of the FizzBuzz program