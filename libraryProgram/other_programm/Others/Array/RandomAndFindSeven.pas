Program z;
Const MaxSize = 100;
Type MyArray = array [1..MaxSize] of integer;
Var
  a:MyArray;
  i:integer;
begin
  for i:=1 to MaxSize do
    begin
       a[i]:=Random(8);
    end;
    
   for i:=1 to MaxSize do
    begin
      if a[i] = 7 then
        begin
          Write(i,',');
        end;
    end;
    Writeln;
end.