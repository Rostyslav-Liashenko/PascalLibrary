program test;
Uses Crt;
Var weight,cost,sum:real;
begin
  sum:= 0;
  Writeln('Введите 0, чтобы закончить сеанс');
  while true do
    begin
      Writeln('Введите вес, в киллограмах');
      Readln(weight);
      if weight = 0 then
        begin
          break;
        end;
      Writeln('Введите стоимость за 1 килограм');
      Readln(cost);
      sum:= sum + cost * weight;
      Writeln('Введите следущий товар');
    end;
    Writeln('Общая стоимость', sum:8:2,' рублей' );
end.