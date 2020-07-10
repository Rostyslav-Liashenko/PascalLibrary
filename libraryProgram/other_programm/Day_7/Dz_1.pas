Program dz;
type matrix = array[1..10,1..10] of integer;
Var a:matrix;
    n,m:integer;
    i1,j1,i2,j2:integer;
    
procedure Vvod(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      a[i,j]:=Random(20)+1;
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

function MaxEl(var a:matrix; n,m:integer):integer;
Var max,i,j:integer;
begin
  max:=-32000;
  for i:=1 to n do
    begin
      for j:=1 to m do
        if a[i,j] > max then
          begin
            max:=a[i,j];
            i1:=i;
            j1:=j;
          end;
    end;
    result:=max;
end;

function MinEl(var a:matrix; n,m:integer):integer;
Var min,i,j:integer;
begin
  min:=32000;
  for i:=1 to n do
    begin
      for j:=1 to m do
        if a[i,j] < min then
          begin
            min:=a[i,j];
            i2:=i;
            j2:=j;
          end;
    end;
   result:=min;
end;

procedure change(var a,b:integer);
Var t:integer;
begin
  t:=a;
  a:=b;
  b:=t;
end;

procedure Obminst;
Var i:integer;
begin
  for i:=1 to n do
    begin
      change(a[i,j1], a[i,j2]);    
    end;
end;

begin
  Writeln('Введіть розмір матриці: ');
  Readln(n,m);
  vvod(a,n,m);
  Writeln('Матриця');
  Vivod(a,n,m);
  Writeln('Максимальний елемент ',MaxEl(a,n,m));
  Writeln('Мінімальний елемент ',MinEl(a,n,m));
  obminst;
  Vivod(a,n,m);
end.