Program Loop_Dz12;
Uses Crt;
Var a,sum:Real;
    n:integer;
Begin
 a:=1/3;
 sum:=0;
 n:=2;
 while abs(a) > 0.01 do
  begin
    Write(a:5:3, ' + ');
    sum:=sum + a;
    a:=1/((2 * n - 1) *(2 * n + 1));
    n:=n+1;
  end;
  Writeln();
  TextColor(Green);
  Writeln('Сума ряда = ', sum);
end.