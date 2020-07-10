Program deacder;
Var 
  i:byte;
  P:real;
  buferX,buferY,x1,y1,xn,yn:integer;
  
function lenPoint(x1,y1,x2,y2:integer):Real;
begin
  result:=sqrt(sqr(x2-x1) + sqr(y2 - y1));
  buferX:=x2;
  BuferY:=y2;
end;

{основна программа}
begin
  P:=0;
  i:=2;
  Write('Введите x1: ');
  Readln(x1);
  Write('Введите y1: ');
  Readln(y1);
  buferX:=x1;
  BuferY:=y1;
  while (i <> 11) do
    begin
      Write('Введите x',i,':');
      Readln(xn);
      Write('Введите y',i,':');
      Readln(yn);
      P:= P + lenPoint(buferX,buferY,xn,yn);
      i:=i+1;
    end;
      P:=P + lenPoint(x1,y1,buferX,buferY);
      Writeln('Периметр - ', P);
end.