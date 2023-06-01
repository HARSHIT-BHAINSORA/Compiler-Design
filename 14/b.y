%{
    #include<stdio.h>
    int yylex(void);
    int yyerror(char *);
%}
%token NUM
%left '+' '-'
%left '*' '/'
%right NEGATIVE
%%
S: E {printf("\n");};
E : E '+' E {printf("+");}
  | E '-' E {printf("-");}
  | E '/' E {printf("/");}
  | '(' E ')'
  | '-' E %prec NEGATIVE {printf("-");}
  | NUM {printf("%d" , yylval);}
  ;
%%
int main(){
    yyparse();
}  
int yyerror(char *msg){
    return printf("error YACC : %s\n" , msg);
}