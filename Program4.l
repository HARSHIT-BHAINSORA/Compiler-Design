%{
    #include<stdio.h>
    int n = 0;
%}    
%%
"while"|"if"|"else" {n++;printf("\tkeyword : %s",yytext);}
"int"|"float" {n++;printf("\tkeyword : %s",yytext);}
[a-zA-Z_][a-zA_Z0-9_]* {n++;printf("\tIdentifier:%s",yytext);}
"<="|"=="|"="|"++"|"-"|"^"|"+"|"("|")"|"," {n++;printf("\toperator:%s",yytext);}
"{"|"}"|";" {n++;printf("\tSeperators:%s",yytext);}
-?[0-9]+"."[0-9]+ {n++;printf("\tFloat:%s",yytext)};
-?[0-9]+ {n++;printf("\tInterger:%s",yytext)};
. ;
%%

int yywrap(){}

int main(){
    yylex();
    printf("\nTotal number of token = %d\n",n);
}
