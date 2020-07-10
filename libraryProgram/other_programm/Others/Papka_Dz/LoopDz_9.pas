Program Loop_Dz9;
Var inp:Real;
    year:integer;
begin
  inp:=1000;
  while(inp < 2000) do
    begin
      inp:=inp + (inp * 5 / 100);
      year:=year + 1;
      Writeln(year,' рік');
      Writeln('Баланс - ', inp:5:2);
    end;
  Writeln;
  Writeln('Кількість років - ', year);
  Writeln();
end.