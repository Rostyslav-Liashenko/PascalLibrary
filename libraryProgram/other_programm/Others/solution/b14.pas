program b14;
Uses Crt;
Const pi:real=3.14;
Var l,s,r:real;
begin
  Writeln('Введите длину окружности');
  Readln(L);
  r:= L / 2 * pi;
  Writeln('Радиус круга ', r);
  s:= pi * sqr(r);
  Writeln('Площа круга ', s);
end.