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

procedure serRw(a:matrix; n,m:integer);
Var h:real;
    i,j:integer;
    sum:integer;
begin
  for j:=1 to m do
  begin
    sum:=0;
    for i:=1 to n do
      begin
         if j mod 2 = 0 then
          begin
            sum:=sum + a[i,j];
          end;
      end;
      if j mod 2 = 0 then
        begin
          h:=sum / n;
          Writeln('Середнє значення  ', h:6:3);
        end;
  end;
end;

begin
  Write('Введіть розмір матриці: ');
  Readln(n,m);
  RandMatr(a,n,m);
  Writeln('Матриця');
  VivodMatr(a,n,m);
  serRw(a,n,m);
end.