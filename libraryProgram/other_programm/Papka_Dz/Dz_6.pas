Program Dz_6;
Uses Crt;
Var f1,F2:char;
begin
  Writeln('Перший друг поступив в вуз? [y/n]');
  Readln(f1);
  Writeln('Другий друг поступив в вуз? [y/n]');
  Readln(f2);
  if ((f1 = 'Y') or (f1 = 'y')) and ((f2 = 'y') or (f2 = 'Y')) then
    begin
      Writeln('Поступили в вуз!!!');
    end
  else
    begin
      Writeln('Піщли працьовати в Сріблянку!!!');
    end;
end.