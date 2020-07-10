Program odinatsotoe;
Uses Crt;
Var
  z,d:integer;
  a,S:Real;
Begin
 a:= 1;
 s:=0;
 z:=-1;
 d:=3;
 while abs(a) > 0.01 do
  begin
    Write(a, ' + ');
    s:=s + a;
    a:= z * (1 / d);
    d:=d + 2;
    z:= -z;
  end;
  Writeln();
  TextColor(Green);
  Writeln('Сума ряда = ', s);
end.