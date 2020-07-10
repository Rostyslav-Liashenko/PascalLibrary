Program Task_2;
var
  y,x1,x2,dx:Real;
begin
  x1:= -3;
  x2:= 1;
  dx:= 0.1;
  While(x1 < x2) do
    begin
      y:= 4 * (x1 * x1 * x1) - 2 * (x1 * x1) + 5;
      Writeln('x = ', x1:1:1, ' y = ', y:1:1);
      x1:=x1+ dx;
    end;
end.