Program Dz_2;
type matrix = array[1..10,1..10] of integer;
Var a:matrix;
    n,m:integer;
    snow,rain:integer;
    
procedure Vvod(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      begin
        if j = 1 then
          a[i,j]:=Random(20)-10
        else
          a[i,j]:=Random(20);
      end;
end;

procedure Vivod(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do 
  begin
    for j:=1 to m do
      Write(a[i,j]:5);
    Writeln;
  end;
end;

procedure Calc(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to m -1 do
      begin
        if a[i,j] >= 0 then
          rain:=rain + a[i,j + 1]
        else
          snow:=snow + a[i,j + 1];
      end;
end;

begin
 n:=7;
 m:=2;
 rain:=0;
 snow:=0;
 Vvod(a,n,m);
 Vivod(a,n,m);
 Calc(a,n,m);
 Writeln('Дождя випало ', rain);
 Writeln('Снігу випало ', abs(snow));
end.