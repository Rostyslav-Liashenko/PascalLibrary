Program b12;
Uses Crt;
Var a,b:integer;
c:Real;
begin
  Writeln('Введите катет треугольника');
  Readln(a);
  Writeln('Введите катет треугольника');
  Readln(b);
  c:= sqrt(sqr(a) + sqr(b));
  Writeln('Гипотенуза треугольника ', c);
  Writeln('Периметр треугольника ', a + b + c);
end.