program matr_demo;
Uses Crt;
const nn = 10;
type arraya = array[1..nn,1..nn] of integer;
Var
  a:arraya;
  i,n,z:byte;
  ch:char;


Procedure InputMatr(n:integer; var a:arraya);
Var i,j:byte;
begin
  for i:=1 to n do
    for j:=1 to n do
      a[i,j]:=random(100);
end;

Procedure OutputMatr(n:integer; var a:arraya);
Var i,j:byte;
begin
  Writeln('----Вихідна матириця----');
  writeln;
  for i:=1 to n do
    begin
      for j:=1 to n do
        write(a[i,j]:5);
      Writeln;
    end;
end;

procedure Sort(x,n:integer; var a:arraya);
Var i,k,h:integer;
begin
  for i:=2 to n do
  for k:=n downto i do
  if a[k-1,x]>a[k,x] then
    begin
      h:=a[k-1,x];
      a[k-1,x]:=a[k,x];
      a[k,x]:=h;
    end;
end;


begin
  repeat 
  clrscr;
  Writeln('Розмір матриці ?');
  Readln(n);
  inputMatr(n,a);
  Writeln('Введи номер рядочка:');
  Readln(z);
  OutPutMatr(n,a);
  Sort(z,n,a);
  OutPutMatr(n,a);
  Writeln('Повторити? [y/n]':30);
  ch:=Readkey;
  until (ch = 'n') or (ch = 'N');
end.