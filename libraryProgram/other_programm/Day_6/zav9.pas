program dz;
type matrix = array[1..10,1..10] of integer;
Var a:matrix;
    n,m:integer;
    
procedure RandMatr(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      a[i,j]:=random(20);
end;

procedure SumMainD(var a:matrix; n,m:integer);
var i:integer;
    sum:integer;
begin
  sum:=0;
  for i:=1 to n do
    begin
      sum:= sum + a[i,i];
    end;
  Writeln('Сума головної діагоналі: ', sum);
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


begin
  Write('Введіть розмір матриці: ');
  Readln(n,m);
  RandMatr(a,n,m);
  Writeln('Матриця');
  VivodMatr(a,n,m);
  SumMainD(a,n,m);
end.