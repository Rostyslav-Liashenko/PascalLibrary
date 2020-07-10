Program Triangle;

Var x1,y1,x2,y2,x3,y3:integer;
  S,P,piv:real;

function lenPoint(x1,y1,x2,y2:integer):Real;
begin
  result:=sqrt(sqr(x2-x1) + sqr(y2 - y1));
end;

begin
  Write('Введите x1: ');
  Readln(x1);
  Write('Введите y1: ');
  Readln(y1);
  Write('Введите x2: ');
  Readln(x2);
  Readln('Введите y2: ');
  Readln(y2);
  Write('Введите x3: ');
  Readln(x3);
  Readln('Введите y3: ');
  Readln(y3);
  P:=P + lenPoint(x1,y1,x2,y2) + lenPoint(x2,y2,x3,y3) + lenPoint(x1,y2,x3,y3);
  piv:=P / 2;
  S:=sqrt(piv * (piv - lenPoint(x1,y1,x2,y2)) * (piv - lenPoint(x2,y2,x3,y3)) * (piv - lenPoint(x1,y2,x3,y3)) );
  Writeln('Периметр - ', P);
  Writeln('Площа - ', S);
end.