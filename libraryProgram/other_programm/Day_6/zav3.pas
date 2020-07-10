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

procedure odno(var a:matrix; n,m:integer);
Var i,j,sum,count:integer;
begin
  sum:=0;
  count:=0;
  for i:=1 to n do
    begin
      for j:=1 to m do
        begin
          if a[i,j] <= 9 then 
            begin
              sum:=sum + a[i,j];
              count:=count + 1;
            end;
        end;
    end;
   Writeln('Сума одноцифрових: ', sum);
   Writeln('Кількість одноцифрових: ', count);
end;

begin
  Write('Введіть розмір матриці: ');
  Readln(n,m);
  RandMatr(a,n,m);
  Writeln('Матриця');
  VivodMatr(a,n,m);
  odno(a,n,m);
end.