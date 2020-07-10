program b6;
Uses Crt;
var a,b,c:integer;
begin
  Writeln('¬вдите длину  первого ребера');
  Readln(a);
  Writeln('¬вдите длину  второго ребера');
  Readln(b);
  Writeln('¬вдите длину  третьего ребера');
  Readln(c);
  Writeln('обЇм ', a * b * C);
  Writeln('ѕлощадь поверхности ', 2 * (a*b + b*c + a*c));
end.