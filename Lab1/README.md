# Part 1

---

# Part 2

File structure

- `capital.l` - Flex specification file containing the rules and actions
- `lex.yy.c` - C file generated from the flex file
- `scan.exe` -  Executable file created by compiling the `lex.yy.c` file
- `automate.py` - [Optional] helper script to automatically compile the `password.l`  file to generate `lex.yy.c` and `scan.exe`

### Working

This Lexer is inspired by [The Password Game](https://neal.fun/password-game/). It takes an input (password) and checks whether it meets the following specified rules. The password should contain:

1. No spaces
2. At least 1 special character [!@#$%^&*(){},=-.+;'”] (`/` is not included)
3.  The country you are in currently (hard coded to ‘Kenya’ / ‘kenya’)
4. A date in the format `dd/mm/yyyy`
5. Numbers that individually add up to 30

If an input is given that meets all these conditions e.g. `kenya13/09/2023/5.5`, the output displayed is

> Password is valid!!
> 

If not, the rules that have been violated are displayed as output instead. e.g., the password `kenya13/09/2023/` gives the following output

> Numbers in password must add up to 30. Current count - 20
Password must have at least 1 special character
>
