Program z;
Const MaxSize = 100;
Type MyArray = array [1..MaxSize] of integer;
Var
  a:MyArray;
  i:integer;
begin
  for i:=1 to MaxSize do
    begin
       a[i]:=Random(256);
    end;
    
   for i:=1 to MaxSize do
    begin
      Writeln(a[i]);
    end;
end.