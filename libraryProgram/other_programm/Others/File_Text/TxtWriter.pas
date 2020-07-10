Var 
  f:text;
  i:integer;
  s:string;
begin
  Assign(f,'C:\Users\Patron\Desktop\Algotithm\text\news.txt');
  ReWrite(f);
  Writeln('Введите сообщения: ');
  Readln(s);
  for i:=1 to 10 do
    begin
      Writeln(f,s);
    end;
  Close(f);
end.