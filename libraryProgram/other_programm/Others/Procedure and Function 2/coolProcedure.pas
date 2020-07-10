Program blank;
uses Crt;
Var
  symbol:char;
  kil,spases:byte;
  fio,adres:string;
  
procedure Druk(c:char; n:byte);
Var i:byte;
begin
  for i:=1 to n do
    write(c);
end;

begin
  clrscr;
  Writeln('Введи ПІБ ');
  readln(fio);
  Writeln('Введи адресу ');
  Readln(adres);
  Write('Введи символ для друку - ');
  Readln(symbol);
  Write('Введи кількість - ');
  Readln(kil);
  clrscr;
  Druk(symbol, kil);
  Writeln;
  spases:=(kil - length(fio)) div 2;
  Druk(' ', spases);
  Writeln(fio);
  spases:=(kil - length(adres)) div 2;
  Druk(' ',spases);
  Writeln(adres);
  druk(symbol,kil);
  Writeln();
end.