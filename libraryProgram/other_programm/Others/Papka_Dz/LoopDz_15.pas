Program LoopDz_10;
Var max,k:integer;
    number:longint;
begin
  max:=-32768;
  Write('Введите число: ');
  Readln(number);
  while (number <> 0) do
    begin
        k:= number mod 10;
        number:=number div 10;
        if k > max then
          begin
            max:=k;
          end;
    end;
  Writeln('Максимальна цифра = ', max);
end.