Program paf;
type matrix = array[1..10, 1..10] of integer;
Var a:matrix;
    n,m:integer;
    
Procedure Vvod(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      a[i,j]:=random(10) + 1;
  
end;

procedure Vivod(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    begin
      for j:=1 to m do
        Write(a[i,j]:4);
      Writeln;
    end;
end;
{
procedure Diag2;
Var i,j:integer;
begin
  for i:=2 to n-D1 do
    for j:=1 to m do
      if i = n-j + 1 then
        a[i,j]:=0;
end;
}

procedure Zam;
Var i,j,z:integer;
begin
  z:=2;
  for i:=n-1 downto 2 do
    begin
      for j:=z to n-1 do
        a[i,j]:=0;
      z:=z+1;
    end;
end;

begin
  Writeln('Введіть розмір матриці: ');
  Readln(n,m);
  Vvod(a,n,m);
  Writeln('Матриця');
  Vivod(a,n,m);
  Writeln('Процес діагоналі');
  //Diag2;
  zam;
  Vivod(a,n,m);
  Writeln;
end.