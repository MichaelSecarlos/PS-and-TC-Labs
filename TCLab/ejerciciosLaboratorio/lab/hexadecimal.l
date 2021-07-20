%option main
%{
    #include <iostream>
%}

%%
[0-9A-F]+  {printf("Es hexadecimal");}

%%
// (01*0)|1*
