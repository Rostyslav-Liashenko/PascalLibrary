program zz;
var 
  s:string;

procedure DelSpace(var s:string);
begin
  while Pos('  ', s) <> 0 do
    Delete(s,Pos('  ', s),1);
end;

begin
  Writeln('Введите строку: ');
  readln(s);
  DelSpace(s);
  Writeln(s);
end.