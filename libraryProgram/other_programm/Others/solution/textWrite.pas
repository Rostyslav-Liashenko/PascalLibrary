program textWrite;
Uses Crt;
Var i:integer;
f:text;
s:string;
begin
  Randomize;
  Assign(f,'C:\text\test.txt');
  reWrite(f);
  for i:= 0 to Random(21) do
    begin
      Writeln(f,i);
    end;
  Close(f);
  
  reset(f);
  While not EOF(f) do
    begin
      Readln(f,s);
      Writeln(s);
    end;
end.