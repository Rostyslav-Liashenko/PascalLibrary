Program Dz;
Var R,a:integer;

procedure Inp(var r,a:integer);
begin
  Write('Введіть радіус кола:');
  Readln(r);
  Write('Введіть сторону квадрата:');
  Readln(a);
end;

function Rel(a:integer):boolean;
var rv:real;
begin
  rv:= a / 2; {радіус вписаного кола}
  if rv >= r then
    result:=true
  else
    result:=false;
end;

begin
  Inp(r,a);
  if Rel(a) then
    Writeln('Коло R = ',r,' вписується в квадрат a = ',a)
  else
    Writeln('Коло не вписується в квадрат');
end.