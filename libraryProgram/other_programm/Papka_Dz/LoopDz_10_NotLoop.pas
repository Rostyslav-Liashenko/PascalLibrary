Program LoopDz_10;
Var a,b:integer;
begin
  Write('Введіть кількість таблеток: ');
  Readln(a);
  Write('Введіть кількість флаконів: ');
  Readln(b);
  Writeln('Покладено у кожен флакон - ', a div b);
  Writeln('Не розфасовані - ', a mod b);
end.