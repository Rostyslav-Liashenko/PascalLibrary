Program Sym;
Uses Crt;
Var num:integer;
    ch:char;
begin
  Writeln('Введіть символ: ');
  ch:=Readkey;
  Writeln('Його код: ',ord(ch));
  Writeln('Введіть код символу від 0-255: ');
  Readln(num);
  Writeln('Його символ: ', chr(num));
end.