Program st_5;
type MyArray = array[1..20, 1..20] of integer;
Var 
  a:MyArray;
  n,m,dop:integer;
  ch:char;
  dob:longint;
  
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

function SumD(var a:MyArray; n,m:integer):integer;
Var i,j,sum:integer;
begin
  sum:=0;
  for i:=1 to n do
    for j:=1 to m do
      begin
        sum:=sum+a[i,j];
      end;
  result:=sum;
end;


begin
  dob:=1;
  Writeln('Введіть розмір матриці: ');
  Readln(n,m);
  repeat
    Randzap(a,n,m);
    Vivod(a,n,m);
    dop := SUmD(a,n,m);
    Writeln('Сума матриці: ', dop);
    dob := dob * dop;
    Writeln('Продовжувати? [y\n]');
    Readln(ch);
  until (ch = 'n') or (ch = 'N');
  Writeln('Сума матриць = ', dob);
end.