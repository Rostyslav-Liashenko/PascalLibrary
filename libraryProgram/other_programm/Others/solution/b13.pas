Program b13;
Uses Crt;
Const pi:double=3.14;
Var r1,r2,s1,s2:real;
begin
  Writeln('Введите радиус первого круга');
  Readln(r1);
  Writeln('Введите радиус второго круга');
  Readln(r2);
  s1:= pi * sqr(r1);
  Writeln('Площадь первого круга ', s1);
  s2:= pi * sqr(r2);
  Writeln('Площадь второго круга ', s2);
  Writeln('Площадь кругов ', s1 - s2);
end.