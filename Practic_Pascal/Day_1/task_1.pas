Program task_1;
Uses Crt;
Var
    a,b,c,d,f:real;
    
begin
    Writeln('Input the a, b, c and d: ');
    Readln(a,b,c,d);
    a := abs(a);
    b := abs(b);
    c := abs(c);
    d := abs(d);

    f:=sqrt(a * sqr(cos(b)) + 1) * ln(c / d);
    Writeln('a) f = ',f:6:2);
    f:= (abs(a-b)*2-sqr(c)) / (1-sqr(d));
    Writeln('b) f = ',f:6:2);
    f:= arctan(sqrt(4 * a / (sqr(b) * c) - 1));
    Writeln('c) f = ',f:6:2);
    Writeln('Create by Liashenko Ristyslav');
end.
