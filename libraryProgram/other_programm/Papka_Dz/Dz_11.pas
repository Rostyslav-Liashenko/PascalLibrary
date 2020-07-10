Program Dz_11;
Uses Crt;
Var p1,p2,money1,money2:Real;
ch:char;
begin
  Writeln('Введіть вагу першого переможця: ');
  Readln(p1);
  Writeln('Введіть вагу другого переможця: ');
  Readln(p2);
  Writeln('Введіть хто виграв 1 або 2: ');
  Readln(ch);
  if ch = '1' then
    begin
      money1:=p1*p2;
      money2:=p1+p2;
    end
  else
    begin
      money1:=p1+p2;
      money2:=p1*p2;
    end;
  Writeln('Нагорода першого становить - ', money1:6:2);
  Writeln('Нагорода другого становить - ', money2:6:2);
end.