Program LoopDz_4;
Uses Crt;
Var
  count:integer;
  a,d,p:Real;
begin
  count:=0;
  Write('Введіть перший член арифметичної прогресії: ');
  Readln(a);
  Write('Введіть різницю прогресії: ');
  Readln(d);
  Write('Введіть p: ');
  Readln(p);
  while(a <= p) do
    begin
      a:= a + d;
      count:=count + 1;
    end;
  Writeln('Необхідно підсумувати - ', count);
end.