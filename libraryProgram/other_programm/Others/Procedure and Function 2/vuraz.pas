Program pit;
Uses Crt;
Var a,b:integer;
Y:Real;
function lg(a:real):real;
begin
  result:=ln(a) / ln(10);
end;

function tg(x:real):real;
begin
  result:=sin(x) / cos(x);
end;

begin
  Write('Введіть а: ');
  Readln(a);
  Write('Введіть b: ');
  Readln(b);
  Y:=lg(a+b) * lg(a-b)/tg(a+b)*tg(a-b);
  Writeln('Y = ', y:6:2);
end.