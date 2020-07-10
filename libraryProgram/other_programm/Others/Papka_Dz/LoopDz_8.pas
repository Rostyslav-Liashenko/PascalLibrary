Program Loop_Dz8;
Uses Crt;
Label rp;
Var a:Real;
begin
rp:
  write('Введите а > 2 : ');
  Readln(a);
  if a <= 2 then
    begin
      Writeln('Не вірно введені данні!!!');
      Goto rp;
    end;
  while(a >= 0.5) do
    begin
      Writeln('S = ', sqrt(3) / 4 * sqr(a):4:2);
      a:=a - 1.3;
    end;

end.