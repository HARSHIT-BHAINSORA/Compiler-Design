%{
%} 
%%
[ \n\t]+ fprintf(yyout," ") ;
. fprintf(yyout,"%s",yytext);
%%

int yywrap(){}

int main(){
    extern FILE *yyin;
    yyin = fopen("Input.txt","r");
    yyout = fopen("Output.txt,"w");
    yylex();
}
