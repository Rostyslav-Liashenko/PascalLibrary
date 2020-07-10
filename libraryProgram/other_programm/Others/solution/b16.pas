program b16;
Uses Crt;
Var x1,x2:integer;
begin
  Write('Введите первою коорднату: ');
  Readln(x1);
  Write('Введите второю координату: ');
  Readln(x2);
  Writeln('Растояния ', abs(x2-x1),' cм');
end.