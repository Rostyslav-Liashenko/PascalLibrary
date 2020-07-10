Program Dz;
Var a,b,i,z,kil,sum:integer;

Function Prime(n:integer):boolean;
Var count, i:integer;
begin
  i:=2; count := 0;
  while i * i <= n do
    begin
      if N mod i = 0 then count:= count + 1;
      i:= i + 1;
    end;
  Prime:= (count = 0)
end;

begin
  Writeln('Введіть початок проміжку: ');
  Readln(a);
  Writeln('Введіть кінець проміжку: ');
  Readln(b);
  for i:=a to b do
    begin
      if Prime(i) then
        begin
          kil:=kil + 1;
          sum:=sum + i;
        end;
    end;
  Writeln('Кількість простих чисел - ', kil);
  Writeln('Сума простих чисел - ', sum);
end.