// Admission numbers
/***  
124489
136096
134683
124466
132562
***/
%%
[a-zA-Z]+   {printf("%s\n", yytext); }

[\t]+       {/**/};
\n          {return 0;}
.           {/**/}
%%

int yywrap(){}

int main(){
    yylex();
    return 0;
}