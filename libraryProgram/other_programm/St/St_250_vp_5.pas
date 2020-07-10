Program st_5;
type MyArray = array[1..20, 1..20] of integer;
Var 
  a:MyArray;
  n,m:integer;
  
procedure randZap(var a:MyArray; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      a[i,j]:=Random(10);
end;

procedure Vivod(var a:MyArray; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    begin
      for j:=1 to m do
        begin
          Write(a[i,j]:4);
        end;
       Writeln;
    end;
end;

Procedure calcD(var a:MyArray; n,m:integer);
Var i,j,sum:integer;
begin
  n:=n+1;
  j:=1;
 while (j <> m + 1) do
  begin
    i:=n;
    sum:=a[i,j] + a[i-1,j];
    Writeln('sum = ',sum);
    n:=n-1;
    j:=j+1;
  end;
end;

begin
  Writeln('Введіть розмір матриці: ');
  Readln(n,m);
  Randzap(a,n,m);
  Vivod(a,n,m);
  CalcD(a,n,m);
end.