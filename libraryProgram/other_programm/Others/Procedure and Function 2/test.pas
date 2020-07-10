Program test;
Var
  x,y:integer;
procedure change(var a,b:integer);
Var t:integer;
begin
    t:=a;
    a:=b;
    b:=t;
end;

begin
  Write('Введи 2 числа: ');
  Readln(x,y);
  change(x,y);
  Writeln('x = ', x, ' y = ', y);
end.