/*** Definition Section has one variable
which can be accessed inside yylex()
and main() ***/
%{

%}
 
/*** Rule Section has two rules
matches with a valid identifier: begins with a lower or upper case alphabet or underscore and is followed by any lower case, upper case, underscore, or numerics.
matches an invalid identifier: does not begin with a lower or upper case alphabet or underscore and is followed by any lower case, upper case, underscore, or numerics.
***/
%%

^[a-zA-Z_][a-zA_Z_0-9]* printf("%s is a valid identifier", yytext);
       
^[^a-zA-Z][a-zA_Z_0-9]* printf("%s is an invalid identifier",yytext);
\n          {return 0;}
.;
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
printf("Enter a sample identifier:\n");
yylex();

 
return 0;
}