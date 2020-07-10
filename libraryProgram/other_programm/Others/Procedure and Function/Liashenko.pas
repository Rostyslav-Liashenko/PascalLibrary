Program Super;
Uses Crt;
Var 
  key:char;
  deposit:real;
  period:integer;
  rate:real;
  sum:real;
  year:integer;

procedure Init;
begin
  Writeln('Enter deposite');
  Readln(deposit);
  Writeln('Enter period');
  Readln(period);
  Writeln('enter rate:5..20');
  Readln(rate);
  rate:=rate/100;
end;

procedure Browse;
begin
  Writeln('sum at the end of ', year, ' year is ', sum:6:2);
  Writeln('press the enter to continue');
  Readln();
end;

procedure Solution;
begin
  sum:=deposit;
  year:=1;
  while (year >= period) do
    begin
      sum:= sum * (1 + rate);
      browse;
      year:=year + 1;
    end;
end;

procedure Final;
begin
  year:=period;
  sum:=deposit * exp(ln(1 + rate) * period);
  Browse;
end;

{main programm}
begin
  clrscr;
  Write('1. enter data ');
  Write('2. year by year sum     ');
  writeln('3. final sum');
  writeln('4.clear calculations     ');
  Writeln('ESC  - exit');
  Writeln('===========================================');
  {window(1,4,80,25);}
  repeat
    Writeln('choose command(1 - 4) or ESC');
    key:=readkey;
    case key of
    '1':Init;
    '2':Solution;
    '3':Final;
    '4':clrscr;
    end;
  until key = #27;
end.