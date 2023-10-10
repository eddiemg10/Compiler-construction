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

## Part 1

Notebook included with Python implementation of a simple tokenizer. It splits a sentence collected from user input and outputs its words in different lines, ignoring commas, full stops and question marks

---

## Part 2

File structure

- `password.l` - Flex specification file containing the rules and actions
- `lex.yy.c` - C file generated from the flex file
- `scan.exe` - Executable file created by compiling the `lex.yy.c` file
- `automate.py` - [Optional] python script to automatically compile the `password.l` file to generate `lex.yy.c` and `scan.exe`

### Working

This Lexer is inspired by [The Password Game](https://neal.fun/password-game/). It takes an input (password) and checks whether it meets the following specified rules. The password should contain:

1. No spaces
2. At least 1 special character [!@#$%^&*(){},=-.+;'”] (`/` is not included)
3. The country you are in currently (hard coded to ‘Kenya’ / ‘kenya’)
4. A date in the format `dd/mm/yyyy`
5. Numbers that individually add up to 30

If an input is given that meets all these conditions e.g. `kenya13/09/2023/5.5`, the output displayed is

> Password is valid!!

If not, the rules that have been violated are displayed as output instead. e.g., the password `kenya13/09/2023/` gives the following output

> Numbers in password must add up to 30. Current count - 20 <br>
> Password must have at least 1 special character
