Program Day2;
Uses Crt;
Var
  a:array[1..30] of integer;
  punkt:char;
  n:integer;

procedure Vvod();
Var i:integer;
begin
  for i:=1 to n do
    begin
      Write('a[',i,']=');
      Readln(a[i]);
    end;
  Writeln('Ввод успішний');
end;

Procedure Vivod();
Var i:integer;
begin
  Writeln('Масив A');
  for i:=1 to n do
    Write(a[i]:4);
  Writeln;
end;

procedure ZapRand();
Var i:integer;
begin
  for i:=1 to N do
    begin
      a[i]:=Random(100)-50;
    end;
  Writeln('Ввод успішний');
end;

procedure Peretvor();
Var i:integer;
begin
  for i:=1 to N do
    if i mod 2 = 0 then
      a[i]:=0
    else
      a[i]:=1;
  Writeln('Перетворення успішне');
end;

procedure SerSnach;
Var s:real;
  i:integer;
begin
  s:=0;
  for i:=1 to n do s:=s+a[i];
  Writeln('Середнє значення - ', s:6:3);
end;

procedure MaxEl();
Var IMax:byte;
    i:byte;
begin
  iMax:=1;
  for i:=2 to n do
    if a[i] > a[IMax] then
      Imax:=i;
Writeln('Максимальний елемент - ', a[IMax]);
end;

procedure Revers;
Var
  i,c:integer;
begin
  for i:=1 to n div 2 do
    begin
      c:=A[i];
      a[i]:=a[N+1-i];
      a[n+1-i]:=c;
   end;
end;


begin
  Write('Введи кількість елементів:');
  Readln(n);
repeat
  Writeln('==Меню==');
  Writeln('1 - Заповнити масив (Ручне введення)');
  Writeln('2 - Заповнити масив (Random)');
  Writeln('3 - Вивод масива');
  Writeln('4 - Перетворення');
  Writeln('5 - Середнє арифметичне');
  Writeln('6 - Реверс');
  Writeln('7 - Максимальний елемент');
  Write('Введіть номер команди:');
  Readln(punkt);
  case punkt of 
    '1':begin
          Vvod;
          Writeln('Натисність будьяку клавішу');
          Readln();
        end;
    '2':begin
          ZapRand;
          Writeln('Натисність будьяку клавішу');
          Readln();
        end;
    '3':begin
          Vivod;
          Writeln('Натисність будьяку клавішу');
          Readln();
        end;
     '4':begin
          Peretvor;
          Writeln('Натисність будьяку клавішу');
          Readln();
        end;
     '5':begin
          SerSnach;
          Writeln('Натисність будьяку клавішу');
          Readln();
        end;
     '6':begin
          Revers;
          Writeln('Натисність будьяку клавішу');
          Readln();
        end;
     '7':begin
          MaxEl;
          Writeln('Натисність будьяку клавішу');
          Readln();
        end;
    else
      Writeln('Не вірна команда');
   end;
until false;
end.