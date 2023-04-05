%{
	int c = 0;
%}

%%
"END" {return 0;}
^[a-zA-Z_][a-zA-Z0-9_]* {c++;printf("%s is Valid Identifier" , yytext);}
^[^a-zA-z_] {printf("Invalid Identifier");}
%%

int yywrap(){}

int main(){
	yylex();
	printf("Total number of valid Identifier = %d\n", c);
	return 0;
}



/* Learning ^x -> x se start hona chahiyai
	[^x] -> apart from x
*/
