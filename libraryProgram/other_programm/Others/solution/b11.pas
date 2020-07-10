program b10;
Uses Crt;
var a,b:integer;
begin
  Writeln('Введите первое число');
  Readln(a);
  Writeln('Введите второе число');
  Readln(b);
  Writeln('сумма квадратов модулей ',abs(a) + abs(b));
  Writeln('разность квадратов модулей ', abs(a) - abs(b));
  Writeln('произведения квадратов модулей ', abs(a) * abs(b));
  Writeln('частное квадратов модулей ', abs(a) / abs(b));
end.