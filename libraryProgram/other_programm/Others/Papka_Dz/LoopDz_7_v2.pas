Program Loop_Dz7;
Uses Crt;
Var h,x,i:Real;
begin
  x:=200;
  h:=1200;
  i:=0;
  while h >= 0 do
    begin
      h:=h-x;
      x:=x * 0.9;
      i:=i+1;
    end;
  Writeln(i);
end.