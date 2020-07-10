Program zsuv;
type MyArray = array[1..20] of integer;
Var 
  x:MyArray;
  kil,RStep,Lstep:integer;
  
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

procedure Right(var a:MyArray; n:integer; step:integer);
Var i,j:integer; t:integer;
begin
  for i:=1 to step do
    begin
      t:=a[n];
      for j:=n downto 2 do
        a[j]:=a[j-1];
      a[1]:=t;
    end;
end;

procedure Left(var a:MyArray; n:integer; step:integer);
Var i,j,t:integer;
begin
    for i:=1 to step do
      begin
        t:=a[1];
          for j:=1 to n do
            a[j]:=a[j+1];
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
  Writeln('Введіть крок повороту в право: ');
  Readln(RStep);
  Right(x,kil,1);
  Vivod(x,kil);
  Writeln('Введіть крок повороту в ліво: ');
  Readln(LStep);
  Left(x,kil,2);
  Vivod(x,kil);
end.