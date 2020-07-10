Program Dz_3;
type matrix = array[1..10,1..10] of integer;
Var a:matrix;
    n,m:integer;
    
    
procedure Vvod(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      a[i,j]:=Random(20)-10;
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

procedure calc(var a:matrix; n,m:integer);
Var i,j,sum:integer;
begin
  for i:=1 to n do
    begin
      sum:=0;
      for j:=1 to m do
        begin
          if a[i,j] < 0 then
            begin
              sum:=sum + a[i,j];
            end;
        end;
       Writeln(i:4, '   ', sum:5);
    end;
end;

begin
  Writeln('Введіть розмір матриці: ');
  Readln(n,m);
  Vvod(a,n,m);
  Vivod(a,n,m);
  Writeln('Результати');
  Calc(a,n,m);
end.