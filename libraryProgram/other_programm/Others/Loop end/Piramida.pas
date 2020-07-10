Program Peklo;
var
a:array[0..100,0..100]of integer;
i,j,n:integer;
begin
  Write('Введіть кілікість рядків: ');
  readln(n);
  writeln;
  Writeln('----------Трикутник Паскаля------------');
  a[1,1]:=1;
  for i:=2 to n do {начало заповнення}
    for j:=1 to i do
      a[i,j]:=a[i-1,j-1]+a[i-1,j];
  for i:=1 to n do  {Вивод масіва} { структура прямокутної пірамади, надо буде помінять}
  begin
    for j:=1 to i do
      write (a[i,j],' ');
    writeln;
  end;
end.