/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{

%}
 
/*** Rule Section 
Rule 1 checks if the input given matches the order (aba, abba, aabbaa, ..) and prints its a palindrome
Rule 2 accepts any other characters excluding the newline character and prints its not a palindrome
Rule 3 ends the program when the user presses enter
***/
%%

(a+b+a+) { printf("%s: is a palindrome\n", yytext); }
(.+) { printf("%s: is not a palindrome\n", yytext); }
\n          { return 0;}

%%


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
//Prompts a user to enter a word
printf("Enter a word: \n");
yylex();

}