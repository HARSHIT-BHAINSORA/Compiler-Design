%{
    #include<stdio.h>
    int lines = 0 , ch = 0 , space = 0 , word_cnt = 0 , tabs = 0;
%}
%%
[\n] {lines++;}
[" "] {space++;word_cnt++;}
[\t] {tabs++;}
[^\n\t] {ch++;}
END {return 0;}
%%

yywrap(){}

int main(){
    printf("Enter the sentence = ");
    yylex();
    printf("Number of Lines are -  %d\n", lines);
    printf("Number of character are -  %d\n" ,ch);
    printf("Number of spaces are -  %d\n", space);
    printf("Number of word Count are -  %d\n" , word_cnt);
    printf("Number of tabs are -  %d\n" , tabs);
}
