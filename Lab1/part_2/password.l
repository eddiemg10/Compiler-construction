/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{
#include <stdbool.h>
#include <ctype.h>
#include <stdio.h>

int total_number_count = 0;
bool has_special_character = false;
bool has_space = false;
bool has_kenya = false;
bool contains_date = false;
bool is_valid = true;
%}
 
/*** Rule Section has three rules, first rule
matches with capital letters, second rule
matches with any character except newline and
third rule does not take input after the enter***/
%%

[ \t] {
      is_valid = false;
      printf("Password cannot contain any spaces\n");      
}

[0-9] {
      int num = atoi(yytext);
      total_number_count += num;
}

[!@#$%\^&\*(){},=\-\.+;'"] {
      has_special_character = true;
}

(K|k)enya {has_kenya = true;}

[0-3][0-9]\/[0-1][0-9]\/[0-9]{4} {
     for (int i = 0; yytext[i] != '\0'; i++) {
        if (isdigit(yytext[i])) {
           total_number_count += yytext[i] - '0';
        } 
    }
    contains_date = true;
}
.     {}
\n    {return 0;}
%%
 
/*** Code Section prints the number of
capital letter present in the given input***/
int yywrap(){}
int main(){
 
// Explanation:
// yywrap() - wraps the above rule section
/* yyin - takes the file pointer
          which contains the input*/
/* yylex() - this is the main flex function
          which runs the Rule Section*/
// yytext is the text in the buffer
 
// Uncomment the lines below
// to take input from file
// FILE *fp;
// char filename[50];
// printf("Enter the filename: \n");
// scanf("%s",filename);
// fp = fopen(filename,"r");
// yyin = fp;
 
 printf("Instructions - Password must contain: \n> No spaces\n> At least 1 special character\n"
            "> The country you are in currently\n> A date in the format dd/mm/yyyy"
            "\n> Numbers should add up to 30\n\nEnter Password:");
yylex();

if(has_space){
      printf("Password cannot contain any spaces\n");
      is_valid = false;
}
if(total_number_count != 30){
      printf("Numbers in password must add up to 30. Current count - %d\n", total_number_count);
      is_valid = false;
}
if(!has_special_character){
      printf("Password must have at least 1 special character\n");
      is_valid = false;
}
if(!has_kenya){
      printf("Password must contain the country you are currently in\n");
      is_valid = false;
}
if(!contains_date){
      printf("Password must contain a date in the format dd/mm/yyyy\n");
      is_valid = false;
}

if(is_valid){
      printf("Password is valid!!\n");
}
 
return 0;
}