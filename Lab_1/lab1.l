
/***  
Admission numbers
124489
136096
134683
124466
132562
***/
/*** 
Rule 1 accepts one or more alphabetical characters
Rule 2 accepts tab spaces
Rule 3 ends the program when a user presses enter
Rule 4 accepts all characters except a newline
***/
%%
[a-zA-Z]+   {printf("%s\n", yytext); }

[\t]+       {/**/};
\n          {return 0;}
.           {/**/}
%%

int yywrap(){}

int main(){
    //The printf statement promts a user to enter a sentence
    printf("Enter your sentence: \n");
    yylex();
    return 0;
}