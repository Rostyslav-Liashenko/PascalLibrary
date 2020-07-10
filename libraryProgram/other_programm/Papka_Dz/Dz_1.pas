Program dz_1;
Uses Crt;
Var kud1,kud2:integer;
begin
  Write('Введіть кидок першого учня: ');
  Readln(kud1);
  Write('Введіть кидок другого учня: ');
  Readln(kud2);
  if (kud1 >= 12) and (kud1 <= 15) then
    begin
      Writeln('Перший учень влучив. Кількість метрів - ',kud1);
    end;
  if (kud2 >= 12) and (kud2 <= 15) then 
    begin
      Writeln('Другий учень влучив. Кількість метрів - ',kud2);
    end;
end.