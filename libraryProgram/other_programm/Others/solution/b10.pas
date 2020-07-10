program b10;
Uses Crt;
var a,b:integer;
begin
  Writeln('¬ведите первое число');
  Readln(a);
  Writeln('¬ведите второе число');
  Readln(b);
  Writeln('сумма квадратов ',sqr(a) + sqr(b));
  Writeln('разность квадратов ', sqr(a) - sqr(b));
  Writeln('произведени€ квадратов ', sqr(a) * sqr(b));
  Writeln('частное квадратов ', sqr(a) / sqr(b));
end.