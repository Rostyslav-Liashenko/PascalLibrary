Program dz;
type mas = array[1..20] of integer;
Var 
  a:mas;
  kil:integer;

procedure RandZap(var a:mas; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    a[i]:=Random(15);
end;

procedure vivod( var a:mas; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    Write(a[i]:4);
  Writeln;
end;

procedure ToDo(var a:mas; var n:integer);
Var i,min,index,k:integer;
begin
  min:=a[1];
  index:=1;
  for i:=1 to n do
    if a[i] < min then
      begin
        min:=a[i];
        index:=i;
      end;
    Writeln('Мінімальний елемент: ', a[index]);
    k:=a[index];
  for i:=n+1 downto 2 do
    a[i]:=a[i-1];
  n:=n+1;
  a[1]:=k;
end;

begin
  Write('Введіть розмір масива: ');
  Readln(kil);
  RandZap(a,kil);
  Writeln('Даний масив:');
  Vivod(a,kil);
  ToDo(a,kil);
  Writeln('Перетворений масив:');
  Vivod(a,kil);
end.