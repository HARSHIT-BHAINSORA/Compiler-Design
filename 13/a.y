%{
    #include<stdio.h>
    int yylex(void);
    void yyerror(char *);
%}

%token digit
%%
S:S E '\n' {$$=$2;printf("output=%d\n",$$);}
    | ;
E:E '+' T {$$=$1+$3;}
 |E '-' T {$$=$1-$3;}
 |T {$$ = $1;}
 ;
T: T  '^' F {$$=$1*$3;} 
  |T '/' F {$$=$1/$3;}
  |F {$$ = $1;}
  ;
F :digit {$$ = $1;}
%%
int main(){
    yyparse();
    return 0;
}  
void yyerror(char *msg)
{
    printf("\n%s",msg);
    printf("\narithematic expression is invalid");}
}