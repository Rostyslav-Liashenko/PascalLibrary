Program Spiramida;
Var 
  sTr,sP:Real;
  i:integer;
procedure triangle;
Var  a,h:Real;
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
  Writeln('Введіть висоту h: ');
  Readln(h);
   if h <= 0 then
    begin
      Writeln('Не правильно введені данні!!!');
      Goto rp;
    end;
  sTr:=0.5 * a * h;
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