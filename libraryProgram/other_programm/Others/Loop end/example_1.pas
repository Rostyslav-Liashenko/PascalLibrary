Program asd;
Var

  i,x,y:integer;
begin
{
  i:=1;
  x:=1;
  y:=2;
  while x < y  do
    begin
      i:= i + 1;
      x:=x * i;
      y:=y * 2;
      Writeln(i,' ', x, ' ', y);
    end;  
}
  i:=1; 
  x:=1;
  y:=2;
  while i<= 10 do
    begin
      i:= i + 1;
      x:= x * i;
      y:= y * 2;
      Writeln(i, ' ', x, ' ', y);
    end;
end.