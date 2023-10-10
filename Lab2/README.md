# Lab 2

<details>
  <summary>Group Members</summary>

- 134338
- 136047
- 129277
- 135114
- 136809
- 134022
- 135012
- 134469
</details>

---

## Task 1

Notebook has been included with the Python implementation of the task - `python_comments_identifier.ipynb`. The explanation of the task has been included in the notebook.
`script.py` has also been included to provide source code input to identify comments. This should be in the same directory as the notebook and can be replaced with any other valid python script as long as the file name is updated in the notebook.

---

## Task 2

### Logic

Valid identifiers in Python are defined as follows:

- A combination of uppercase and lowercase letters, digits, or an underscore(\_) e.g. `newVariable`, `_variable`, `new_variable`
- Can't start with a digit.
- Can’t use special symbols like !,#,@,%,$ etc
- Can't use keywords.

The program can also determine the types of tokens that are present in the provided user input. The tokens that can be identified are:
- Identifier
- String
- Integer
- Symbol
- Operator

### Python Solution

Contains a function that tokenizes an input to check for any reserved words. Also contains the main function that matches the input to a regex with the specifications for a valid identifier. It can also classify the tokens into various types by use of a for loop. 

### Flex file

Contains a function to identify whether an input is a Python keyword, which would make an identifier invalid. It also contains rules matching valid and invalid identifiers.
