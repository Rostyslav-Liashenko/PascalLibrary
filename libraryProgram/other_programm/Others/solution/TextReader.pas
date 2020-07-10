Program TextReader;
Uses Crt;
var f:text;
s:string;
begin
  Assign(f,'C:\text\1.txt');
  Reset(f);
  
  while not EOF(f) do
    begin
      Readln(f,s);
      Writeln(s);
    end;
 Close(f);
end.