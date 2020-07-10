program nOutput;
Uses Crt;

procedure nString();
Var f:text;
s:string;
i,r:integer;
begin
  Write('Введите строку файла который вы хотите увидеть:');
  Readln(r);
  Assign(f,'C:\text\stroka.txt');  
  reset(f);
  for i:= 1 to r do
    begin
      Readln(f,s);
    end;
  Writeln(s);
end;

begin
  nString();
end.