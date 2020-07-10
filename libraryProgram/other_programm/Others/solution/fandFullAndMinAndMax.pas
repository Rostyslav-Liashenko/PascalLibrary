program qe;
Uses Crt;
Var f:text;
max,min,sum,k,count:integer;
arf:real;

procedure toFull(f:text);
Var i:integer;
begin
  Rewrite(f);
  for i:= 0 to Random(100) do
    begin
      Writeln(f, Random(100));
    end;
  Close(f);
end;

procedure standartValue();
begin
  sum:=0;
  max:=0;
  min:=100;
  count:=0;
end;

begin
  Assign(f, 'C:\text\ran.txt');
  toFull(f);
  standartValue();
  Reset(f);
  while not Eof(f) do
    begin
      Readln(f,k);
      count:=count + 1;
      if k > max then
        begin
          max:=k;
        end;
      if k < min then
        begin
          min:=k;
        end;
       sum:=sum + k;
    end;
   arf:=sum/count;
   Writeln('Минимальное число - ', min);
   Writeln('Максимальное число - ', max);
   Writeln('Сумма все чисел - ', sum);
   Writeln('Среднее арифметическое ', arf:4:2);
end.