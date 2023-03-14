%{
     int ws , w , ch;
%}

%%
[' '\n\t] {ws++;}
[^' '\t\n]+ {w++;ch+=yyleng;}
%%

int yywrap(){}

int main()
{
    extern FILE *yyin;
    yyin = fopen("Input.txt" , "r");
    yylex();
    
    printf("\n Number of whitespace = %d" , ws);
    printf("\n Number of characters = %d" , ch);
    printf("\n Number of words = %d\n" , w);
    
    return 0;
}

%{
	int c = 0;
%}

%%
^[a-zA-Z_][a-zA-Z0-9_]* {printf("Valid Idnetifier");}
^[a-zA-z] {printf("Invalid Identifier");}
.;
%%

