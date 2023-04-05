%{
%} 
%%
"//"[^\n] ;
"/*"([^*]|[*]+[^/])*[*]+"/" ;
. fprintf(yyout,"%s",yytext);
%%

int yywrap(){}

int main(){
    extern FILE *yyin , *yyout;
    yyin = fopen("Input.txt","r");
    yyout = fopen("Output.txt,"w");
    yylex();
}
