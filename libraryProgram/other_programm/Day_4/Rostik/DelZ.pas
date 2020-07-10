Program lab;
Type MyArray = array[1..20] of integer;
Var x:MyArray;
    kil:integer;

procedure RandFull(var a:MyArray; n:integer);
Var i:byte;
begin
  for i:=1 to n do
    a[i]:=Random(20);
end;

procedure Print(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      Write(a[i]:4);
    end;
  Writeln;
end;

PROCEDURE DelEl(var a:MyArray; var n:integer; nom:integer);
Var i:integer;
begin
  for i:=nom to n do 
    a[i]:=a[i+1];
  n:=n-1;
end;

procedure Delz(var a:Myarray; var n:integer);
Var i,z:integer;
begin
  Writeln('Введіть число z: ');
  Readln(z);
  i:=1;
  while (i <= n ) do
    begin
      if a[i] < z then
        begin
          DelEl(a,n,i);
          i:=0;
        end;
        i:=i+1;
    end;
end;

begin
  Write('Введіть кількість елементів: ');
  Readln(kil);
  RandFull(x,kil);
  Print(x,kil);
  DelZ(x,kil);
  Print(x,kil);
end.