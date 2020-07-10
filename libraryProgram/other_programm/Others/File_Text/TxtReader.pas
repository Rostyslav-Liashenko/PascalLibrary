Program sech;
Var
  f:text;
  l,s:string;
begin
Writeln('Введите путь к файлу, который нада прочитать: ');
Readln(l);
// l:='C:\Users\Patron\Desktop\Algotithm\text\news.txt';
Assign(f,l);
Reset(f);
while not EOF(f) do
  begin
    Readln(f,s);
    Writeln(s);
  end;
Close(f);
end.