program b19;
Uses Crt;
Var x1,x2,x3,y1,y2,y3,l1,l2,l3,p,s:real; 
begin
  Writeln('Введите х1 координату');
  Readln(x1);
  Writeln('Введите y1 координату');
  Readln(y1);
  
  Writeln('Введите х2 координату');
  Readln(x2);
  Writeln('Введите y2 координату');
  Readln(y2);
  
  Writeln('Введите х3 координату');
  Readln(x3);
  Writeln('Введите y3 координату');
  Readln(y3);
  l1:= sqrt(sqr(x2-x1)+ sqr(y2-y1));
  l2:= sqrt(sqr(x2-x3)+ sqr(y2-y3));
  l3:=sqrt(sqr(x3-x1)+ sqr(y3-y1));
  p:=l1+l2+l3;
  Writeln('Периметр треугольника ', p:3:2);
  p:=p/2;
  Writeln('Полупериметр ', p:3:2);
  s:=sqrt(p * (p - l1)*(p - l2) * (p - l3));
  Writeln('Площадь треугольника ', s:3:2);
end.