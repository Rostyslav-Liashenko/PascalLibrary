Program Dz_9;
Uses Crt;
Var z,y,x:Real;
begin
  Writeln('Введіть x: ');
  Readln(x);
  Writeln('Введіть y: ');
  Readln(y);
  if (x > 0) and ((1 <= y) and (y < 2)) then
    begin
      z:= x + sqrt(x) + ln(x) + exp(y);
    end
  else
    begin
      if (x < 0) and (y > 2) then
        begin
          z:=2*abs(x) - ln(y) - exp(x);
        end
      else
        begin
          z:=1;
        end;
    end;
Writeln('z = ', z);
end.