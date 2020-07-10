Program Dz_1;
Var b1,q,sum:Real;
  n:integer;
begin
  b1:=4;
  q:=0.5;
  while(b1 > 0.02) do
    begin
      sum:=sum + b1;
      b1:=b1*q;
      n:=n + 1;
    end;
  Writeln('Сума членів - ', sum);
  Writeln('Номер останнього члена - ', n);
end.