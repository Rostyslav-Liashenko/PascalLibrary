Program Loop_Dz6;
Uses Crt;
Var inp:Real;
  i,n:integer;
begin
  inp:= 10000;
  Write('Введіть кількість років: ');
  Readln(n);
  for i:= 1 to n do
    begin
      TextColor(Red);
      Writeln(i,' рік');
      TextColor(White);
      inp:=(inp + (inp * 5 / 100)) - 100;
      Writeln('Баланс - ', inp:8:2);
    end;
end.