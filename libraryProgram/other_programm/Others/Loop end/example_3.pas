Program example_3;
Var 
  i,j,k:integer;
begin

for i:= 1 to 5 do
  begin
    for j:=1 to 3 do
      begin
        for k:=1 to 4 do
          Write('*');
        Writeln();
      end;
      Writeln;
 end;
 end.