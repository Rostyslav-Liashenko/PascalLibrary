Program test;
Var spases:integer;
  kil,x,y:integer;
  symbol:char;
 
procedure change(var a,b:integer);
Var t:integer;
begin
    t:=a;
    a:=b;
    b:=t;
end;

procedure Druk(c:char; n:byte);
Var i:byte;
begin
  for i:=1 to n do
    write(c);
end;

begin
  Write('Введи 1 числа: ');
  Readln(x);
  Write('Введи 2 число: ');
  Readln(y);
  Write('Введи символ для друку - ');
  Readln(symbol);
  Write('Введи кількість - ');
  Readln(kil);
  Writeln('До: ');
  Writeln;
  Druk(symbol, kil);
  {spases:=(kil - length(f)) div 2;}
  Druk(' ', kil div 2);
  Writeln('x = ',x);
  {spases:=(kil - length(adres)) div 2;}
  Druk(' ', kil div 2);
  Writeln('y = ', y);
  druk(symbol,kil);
  Writeln('После: ');
  Writeln();
  change(x,y);
  Druk(symbol, kil);
  {spases:=(kil - length(f)) div 2;}
  Druk(' ', kil div 2);
  Writeln('x = ',x);
  {spases:=(kil - length(adres)) div 2;}
  Druk(' ', kil div 2 );
  Writeln('y = ', y);
  druk(symbol,kil);
  
end.