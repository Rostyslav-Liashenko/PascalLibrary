Program St_7;
Var 
  x1,y1,xn,yn,i,n,tempx,tempy:integer;
//To do доделать коли х равні 
begin
  Writeln('Введіть скільки буде координат: ');
  Readln(n);
  Write('Введіть x1 та y1: ');
  Readln(x1,y1);
  for i:=1 to n do
    begin
      Write('Введіть x',i,' та y',i,': ');
      Readln(xn,yn);
      if i <> n then
        begin
         tempx:=xn;
         tempy:=yn;
        end;
    end;
  if x1 = xn then
    begin
      if tempx > xn then
          Writeln('Сад з правої сторони')
      else
          Writeln('Сад з лівої сторони');
    end
  else
    begin
      if x1 > xn then
        begin
          Writeln('Сад з лівої сторони')
        end
     else
        begin
          Writeln('Сад з правої сторони');
        end;
    end;
end.