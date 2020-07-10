Program LoopDz_3;
Uses Crt;
Var r:Real;
    i:integer;
begin
  r:=2;
  for i:=1 to 10 do
    begin
      TextColor(Red);
      Writeln(i,' Куля');
      TextColor(White);
      Writeln('Радіус  кулі - ', r);
      Writeln('Площа бічної поверхні кулі - ', 4 * PI * r * r:6:2);
      r:=r + 0.5;
    end;
  
end.