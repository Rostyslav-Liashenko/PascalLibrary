program b7;
Uses Crt;
Const pi:double = 3.14;
Var r:integer;
begin
 Writeln('Введите радиус');
 Readln(r);
 Writeln('Длина окружности ', 2 * pi * r);
 Writeln('Площадь  окружности ', pi * sqr(r));
end.