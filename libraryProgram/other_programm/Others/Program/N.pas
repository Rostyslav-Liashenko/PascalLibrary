program Rostik;
Uses Crt;
Var i,a,n,b:integer;
begin
  b := 1;
  Write('Введите число а: ');
  ReadLn(a);
  Write('Введите степень: ');
  ReadLn(n);
  
  for i:= 1 to n do
    begin
      b:= b * a;
    end;
  Writeln('После степени: ', b);
end.