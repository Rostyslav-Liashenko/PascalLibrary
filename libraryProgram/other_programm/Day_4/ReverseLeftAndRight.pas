Program zsuv;
type MyArray = array[1..20] of integer;
Var 
  x:MyArray;
  kil:integer;

procedure RandZap(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      a[i]:=i;
    end;
end;

procedure Vivod(Var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      Write(a[i]:4);
    end;
  Writeln;
end;

procedure Right(var a:MyArray; n:integer, step:integer);
Var i:integer; t:integer;
begin
  for i:=1 to step do
    begin
      t:=a[n];
      for i:=n downto 2 do
        a[i]:=a[i-1];
      a[1]:=t;
    end;
end;

procedure Left(var a:MyArray; n:integer; step:integer);
Var i,t:integer;
begin
    for i:=1 to step do
      begin
        t:=a[1];
          for i:=1 to n do
            a[i]:=a[i+1];
        a[n]:=t;
      end;
end;

begin
  Writeln('Введіть кількість елементів: ');
  Readln(kil);
  RandZap(x,kil);
  Writeln('Massiv: ');
  Writeln;
  Vivod(x,kil);
  Writeln;
  Writeln('Введіть крок повороту: ');
  Readln(RStep);
  Right(x,kil,1);
  Vivod(x,kil);
  Left(x,kil);
  Vivod(x,kil);
end.