Program dz;
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

function MaxSuml(var a:matrix; n,m:integer):integer;
Var i,j, maxSum,nom,sum:integer;
begin
  maxSum:=-32000;
  nom:=-32000;
  for i:=1 to n do 
    begin
    sum:=0;
      for j:=1 to m do
          sum:=sum+a[i,j];
      if sum > maxSum then
          begin
            maxSum:=sum;
            nom:=i;
          end;
    end;
   result:=nom;
end;

procedure VivodMaxStr(var a:Matrix; n,m:integer);
Var i,j:integer;
begin
  i:=MaxSuml(a,n,m);
  for j:=1 to n do
    Write(a[i,j]:4);
  Writeln;
end;

begin
  Write('Введіть розмір матриці: ');
  Readln(n,m);
  RandMatr(a,n,m);
  Writeln('Матриця');
  VivodMatr(a,n,m);
  Writeln('Максимальний рядок');
  VivodMaxStr(a,n,m);
end.