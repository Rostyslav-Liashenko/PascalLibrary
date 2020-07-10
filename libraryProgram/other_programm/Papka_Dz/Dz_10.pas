Program Dz_10;
Var x,y:real;
begin
  Writeln('Введіть х: ');
  Readln(x);
  if x < 3 then
    begin
      y:=1 + sqrt(exp(x) + sqrt(exp(x + 1)));
    end
  else
    begin
      if x >= 0 then
        begin
          y:=x - 5 + sqrt(exp(x) + sqrt(exp(x + 1)));
        end
    end;
Writeln('y = ', y:10:4);
end.