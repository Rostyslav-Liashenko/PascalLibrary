Program prrr
const p = '1234';
begin
  repeat
    Write('Введи пароль: ');
    Readln(parol);
    Writeln('Не вірний пароль, Спробуй знову');
  until p = parol
  Writeln('Успішна автроризація');
end.