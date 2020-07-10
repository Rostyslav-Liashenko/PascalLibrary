Program dz;
type matrix = array[1..10,1..10] of integer;
Var a:matrix;
    n,m:integer;
    i1,j1,i2,j2,el:integer;
    
procedure RandMatr(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      a[i,j]:=random(20);
end;

procedure VivodMatr(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    begin
      for j:=1 to m do
        Write(a[i,j]:4);
      Writeln;
    end;
end;

procedure FindElement(var a:matrix; n,m,el:integer; var fi,fj:integer);
Var i,j:integer;
begin
  for i:=1 to n do 
    for j:=1 to m do
      if a[i,j] = el then
        begin
          fi:=i;
          fj:=j;
          break;
        end;
  if (fi = 0) or (fj = 0) then
    Writeln('Елемент не знайдено');
end;

procedure Change(var a,b:integer);
Var t:integer;
begin
  t:=a;
  a:=b;
  b:=t;
end;

begin
  Write('Введіть розмір матриці: ');
  Readln(n,m);
  RandMatr(a,n,m);
  Writeln('Матриця');
  VivodMatr(a,n,m);
  Writeln('Введіть елемент для пошуку:');
  Readln(el);
  FindElement(a,n,m,el,i1,j1);
  Writeln('Введіть елемент для пошуку:');
  Readln(el);
  FindElement(a,n,m,el,i2,j2);
  change(a[i1,j1],a[i2,j2]);
  Writeln('Матриця');
  VivodMatr(a,n,m);
end.