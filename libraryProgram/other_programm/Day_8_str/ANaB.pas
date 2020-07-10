Program zz;
Uses Crt;
Var s:string;
     a,b:char;
    i:integer;
begin
  Writeln('Введіть рядок: ');
  Readln(s);
  Writeln('Введіть а: ');
  a:=Readkey;
  Writeln('Введіть б: ');
  b:=ReadKey;
  Readln(b);
  for i:=1 to Length(s) do
    if s[i] = a then
      s[i]:=b;
  Writeln('Новий рядок: ', s);
end.