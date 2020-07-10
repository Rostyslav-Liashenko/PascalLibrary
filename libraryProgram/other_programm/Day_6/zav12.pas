program dz;
type matrix = array[1..10,1..10] of integer;
Var a:matrix;
    n,m,str:integer;
    
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

procedure MaxElStr(var a:matrix; n,m,str:integer);
Var i,j,max,nomMax:integer;
begin
  max:=a[str,1];
  nomMax:=1;
  for j:=1 to m do
    begin
      if a[str,j] > max then
        begin
          max:=a[str,j];
          nomMax:=j;
        end;
    end;
 Writeln('Максимум рядка ',str,' = ', a[str,nomMax]);
end;

begin
  Write('Введіть розмір матриці: ');
  Readln(n,m);
  RandMatr(a,n,m);
  Writeln('Матриця');
  VivodMatr(a,n,m);
  Writeln('Введіть рядок для пошуку максмиму в ньому:');
  Readln(str);
  MaxElStr(a,n,m,str);
end.