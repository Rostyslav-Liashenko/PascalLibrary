Program Dz_12;
Uses Crt;
Var a,x,y:Real;
function calc(a,x:real):real;
begin
  result:= exp(a) * sqrt(a * a + a) / sin(x); 
end;

begin
 Writeln('Введіть а: ');
 Readln(a);
 Writeln('Введіть x: ');
 Readln(x);
 if (a >= 2) and (x >= 0.5) then
  begin
    y:=ln(a) + calc(a,x);
  end
  else
    begin
      if (a < 2) and (x > 0.5) then
        begin
          y:=exp(a) + calc(a,x);
        end
      else
        Writeln('Error');
    end;
 Writeln('y = ', y:10:4);
end.