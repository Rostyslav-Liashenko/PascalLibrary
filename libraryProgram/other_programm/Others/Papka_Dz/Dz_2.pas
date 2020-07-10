Program Dz_2;
Uses Crt;
Var fin1,fin2:integer;
begin
  Write('Введіть фінансовий стан фірми 1: ');
  Readln(fin1);
  Write('Введіть фінансовий стан фірми 2: ');
  Readln(fin2);
  if fin1 > 0 then
    begin
      fin1:= fin1 * 2;
    end;
  if fin2 > 0 then
    begin
      fin2:= fin2 * 2;
    end;
   Writeln('Фінансовий стан першої фірми : ', fin1);
   Writeln('Фінансовий стан другої фірми : ', fin2);
end.