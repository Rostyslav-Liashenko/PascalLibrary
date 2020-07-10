program b18;
Uses Crt;
Var a,b,c,ac,bc:real;
begin
  Writeln('Введите точку А');
  Readln(a);
  Writeln('Введите точку B');
  Readln(b);
  Writeln('Введите точку С');
  Readln(c);
  ac:= c - a;
  bc:= c - b;
  Writeln('Произвидения точок ', ac * bc);

end.