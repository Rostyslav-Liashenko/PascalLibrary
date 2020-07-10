Program zz;
const p = '1234';
Var parol:string;
begin
  repeat
    Write('Введи пароль:');
    Readln(parol);
  until p = parol;
  Writeln('Программа');
end.