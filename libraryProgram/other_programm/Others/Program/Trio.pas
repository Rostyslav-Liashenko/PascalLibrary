Program Rostik;
Uses Crt;
Var 
a,b,c:integer;
begin
while (true) do
  begin
  Write('Введите а: ');
  ReadLn(a);
  Write('Введите b: ');
  ReadLn(b);
  Write('Введите c: ');
  ReadLn(c);
  if ((a+b)>c) and ((a+c)>b) and ((b+c)>a) then
  begin
    if (a = b) and (b = c) and (a = c) then
    begin
      WriteLn('Трикутник Рівностороній');
    end
   else
    begin
      if (a = b) or (b = c) or (a = c) then
        begin
          WriteLn('Трикутник рівнобедрений');
        end
      else
        begin
          if (a <> b) and (b <> c) and (c <> a) then
            begin
              WriteLn('Трикутник різностороній');
            end;
        end;
    end;
  end
   else
    begin
      WriteLn('Трикутник побудувати не можливо');
    end;
  end;
end.