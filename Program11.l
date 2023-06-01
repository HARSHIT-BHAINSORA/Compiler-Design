%s A B C D Y Z
%% 
<INITIAL>[A-Za-z_] BEGIN B;
<INITIAL>[0-9] BEGIN A;
<INITIAL>[.] BEGIN Y;
<INITIAL>[^A-Za-z0-9_.\n] BEGIN Z;
<INITIAL>\n BEGIN INITIAL;printf("Not Accepted\n");

<A>[.] BEGIN C;
<A>[0-9] BEGIN A;
<A>[A-Za-z_] BEGIN Y;
<A>[^A-Za-z0-9_.\n] BEGIN Z;
<A>\n BEGIN INITIAL;printf("INTEGER\n");

<B>[A-Za-z_] BEGIN B;
<B>[0-9] BEGIN B;
<B>[.] BEGIN Y;
<B>[^A-Za-z0-9_.\n] BEGIN Z;
<B>\n BEGIN INITIAL;printf("IDENTIFIER");

<C>[.] BEGIN Y;
<C>[0-9] BEGIN D;
<C>[A-Za-z_] BEGIN Y;
<C>[^A-Za-z0-9_.\n] BEGIN Z;
<C>\n BEGIN INITIAL;printf("Not Accepted\n");

<D>[.] BEGIN Y;
<D>[0-9] BEGIN D;
<D>[A-Za-z_] BEGIN Y;
<D>[^A-Za-z0-9_.\n] BEGIN Y;
<D>\n BEGIN INITIAL;printf("FLOAT\n");

<Y>[A-Za-z0-9_.] BEGIN Y;
<Y>[^A-Za-z0-9_.\n] BEGIN Z;
<Y>[\n] BEGIN INITIAL;printf("Not Accepted\n");

<Z>[^\n] BEGIN Z;
<Z>[\n] BEGIN INITIAL;printf("INVALID INPUT\n");
%%

int yywrap(){ }

int main(){
    printf("Enter the char[A-Za-z0-9_.] only:\n");
    yylex();
}

