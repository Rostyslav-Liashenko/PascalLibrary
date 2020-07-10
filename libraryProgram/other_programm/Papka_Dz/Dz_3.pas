Program Dz_3;
Uses Crt;
Var a,b,c:Real;
begin
  Write('Введіть а: ');
  Readln(a);
  Write('Введіть b: ');
  Readln(b);
  Write('Введіть c: ');
  Readln(c);
  if (a > b) and (b > c) then
    begin
      a:=a * 2;
      b:=b * 2;
      c:=c * 2;
    end
  else
    begin
      a:=a -1;
      b:=b-1;
      c:=c-1;
    end;
Writeln('a = ', a);
Writeln('b = ', b);
Writeln('c = ', c);
end.