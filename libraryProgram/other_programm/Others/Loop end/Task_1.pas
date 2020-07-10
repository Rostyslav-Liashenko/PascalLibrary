Program cvadrat;
Var
  a,b,c,d:integer;
Label
  rp;
begin
rp:
  Write('Введіть висоту: ');
  Readln(a);
  Write('Введіть ширину: ');
  Readln(b);
  Write('Введіть висоту 2 прямокутника: ');
  Readln(c);
  Write('Введіть ширину 2 прямокутника: ');
  Readln(d);
  if (a <=0) or (b <= 0) or (c <=0) or (d <= 0) then
    begin
      Writeln('Були введені не вірні данні');
      Goto rp;
    end;
  if (a = c) or (b = d) then
    Writeln('Утворився новий прямокутник')
  else
    Writeln('Не можливо побудувати');
end.