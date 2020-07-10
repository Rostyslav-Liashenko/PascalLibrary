Program Dz_5;
USes Crt;
Var fish1,fish2:integer;
begin
  Writeln('Введіть улов першого учня: ');
  Readln(fish1);
  Writeln('Введіть улов другого учня: ');
  Readln(fish2);
  if fish1 = fish2 then
    begin
      Writeln('Улов рівний');
    end
  else
    begin
      if fish1 > fish2 then
        begin
          fish2:=Round(fish2 / 2);
          fish1:=fish1 + fish2;
        end
      else
        begin
          fish1:=Round(fish1 / 2);
          fish2:=fish2 + fish1;
        end;
      Writeln('=======================');
      Writeln('Улов першого - ', fish1);
      Writeln('Улов другого - ', fish2);
    end;
end.