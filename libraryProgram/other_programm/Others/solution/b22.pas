program b22;
uses Crt;
Var a,b,t:real;
begin
  Writeln('Ввдите а');
  Readln(a);
  Writeln('Ввдите b');
  Readln(b);
  t:=b;
  b:=a;
  a:=t;
  Writeln('a =  ', a);
  Writeln('b = ', b);
end.