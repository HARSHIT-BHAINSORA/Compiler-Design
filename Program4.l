%{
    #include<stdio.h>
    int n = 0;
%}    
%%
"while"|"if"|"else" {n++;printf("\nkeyword : %s",yytext);}
"int"|"float" {n++;printf("\nkeyword : %s",yytext);}
[a-zA-Z_][a-zA_Z0-9_]* {n++;printf("\nIdentifier:%s",yytext);}
"<="|"=="|"="|"++"|"-"|"^"|"+"|"("|")"|"," {n++;printf("\noperator:%s",yytext);}
"{"|"}"|";" {n++;printf("\nSeperators:%s",yytext);}
-?[0-9]*"."[0-9]+ {n++;printf("\nFloat:%s",yytext);}
-?[0-9]+ {n++;printf("\nInterger:%s",yytext);}
END {return 0;}
. ;
%%

int yywrap(){}

int main(){
    yylex();
    printf("\nTotal number of token = %d\n",n);
}
