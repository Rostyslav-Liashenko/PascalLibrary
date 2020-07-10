program b17;
Uses Crt;
Var ax,ay,bx,by,cx,cy,AC,BC:real; 
begin
  Writeln('Введите х координату точки А');
  Readln(ax);
  Writeln('Введите y координату точки А');
  Readln(ay);
  
  Writeln('Введите х координату точки B');
  Readln(bx);
  Writeln('Введите y координату точки B');
  Readln(by);
  
  Writeln('Введите х координату точки C');
  Readln(cx);
  Writeln('Введите y координату точки C');
  Readln(cy);
  
  AC:=sqrt(sqr(cx-ax)+sqr(cy-ay));
  Writeln('Длина АС ', AC);
  BC:=sqrt(sqr(cx-bx)+sqr(cy-by));
  Writeln('Длина BC ', BC);
  Writeln('Их сумма ', AC + BC);
end.