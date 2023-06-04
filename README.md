# Compiler-Design
Practicals of Compiler Design


<h1>How to run lex code in ubuntu ? </h1>
    <p>--> $ flex [filename].l Or lex [filename].l <br/>
    --> $ gcc lex.yy.c<br/>
    --> $ ./a.out<br/>
    --> enter the input
    </p>
    
 <h2> flow of Lex program </h2>
 <p>
    step 1   
  lex Source 
lex. l  -----------> Lex Compiler --------> lex.yy.c

step 2 
lex.yy.c ---------> C Compiler -------> a.out

step 3 
input Stream --------> a.out -----------> Sequence of token



* format of lex 

%{<br/>
    Declaration Section<br/>
%}<br/>

%%<br/>
    Rule<br/>
%%<br/>

int yywrap(){}<br/>

int main()<br/>
{<br/>
    yylex();<br/>
    return 0;<br/>
}<br/>
 </p>
 
<h1>How to run yacc file in ubuntu ? </h1>
 <p>
 $ yacc -d a.y<br/>
 $ lex b.l<br/> 
 $ gcc lex.yy.c y.tab.c<br/>
 $ ./a.out<br/>
 </p>
 
  <h2> flow of Yacc program </h2>
 <p>
    step 1   
 
file. y  -----------> Yacc Compiler --------> y.tab.c

step 2 
y.tab.c ---------> C Compiler -------> a.out

step 3 
input Stream --------> a.out -----------> Sequence of token
 
</p>
