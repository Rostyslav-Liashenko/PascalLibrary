Program Spiramida;
Var 
  sTr,sP:Real;
  i:integer;
procedure triangle;
Var  p,a,b,c:Real;
Label rp;
begin
rp:
  Writeln('Введіть сторону а: ');
  Readln(a);
  if a <= 0 then
    begin
      Writeln('Не правильно введені данні!!!');
      Goto rp;
    end;
  Writeln('Введіть сторону b: ');
  Readln(b);
   if b <= 0 then
    begin
      Writeln('Не правильно введені данні!!!');
      Goto rp;
    end;
    Writeln('Введіть сторону c: ');
  Readln(c);
   if c <= 0 then
    begin
      Writeln('Не правильно введені данні!!!');
      Goto rp;
    end;
   p:= (a + b + c) / 2;
  sTr:=sqrt(p * (p - a) * (p - b) * (p - c));
  Writeln('Площа трикутника - ', sTr:6:2);
end;

begin
  Sp:=0;
  Writeln('===Обчислення площі піраміди===');
  for i:= 1 to 4 do
    begin
      Writeln(i,' трикутник');
      triangle;
      Sp:=Sp + Str;
    end;
  Writeln('Площа піраміди: ', Sp:6:2, ' cм');
end.