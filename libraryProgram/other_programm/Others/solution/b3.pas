program b1;
Uses Crt;
Var a,b:integer;
begin
  Writeln('¬ведите первою сторону квадрата');
  Readln(a);
  Writeln('¬ведите второю сторону квадрата');
  Readln(b);
  Writeln('ѕериметр квадрата ', 2 * (a + b));
  Writeln('ѕлощадь квадрата ', a * b);
end.