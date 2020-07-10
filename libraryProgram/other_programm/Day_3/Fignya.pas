Program Day_3;
Uses Crt;
type MyArray = array[1..20] of integer;
     mas = array[1..6] of Real;
const c:mas = (9.51,-4.8,0,5.17,11.3,-9.8);
      x:array[1..7] of Real = (4,5.4,6.3,7.8,8.2,6.5,5.5);
Var 
  numbers:MyArray;
  kil:integer;
  punkt:char;
  
procedure RandVvod(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
      a[i]:=Random(20)-10;
end;

procedure Vvod(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      Write('a[',i,'] = ');
      Readln(a[i]);
    end;
end;

procedure Vivod(a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    Write(a[i] + '  ');
  Writeln;
end;

procedure Vivod_const();
begin
  Var i:integer;
begin
  for i:=1 to 6 do
    Write(x[i] + '  ');
  Writeln;
end;
end;

procedure Vivod_const_2();
begin
  Var i:integer;
begin
  for i:=1 to 6 do
    Write(c[i] + '  ');
  Writeln;
end;
end;

Function MinNegEl():Real;
Var min:Real;
    i:integer;
begin
min:=32640;
  for i:=1 to 6 do
    begin
      if (c[i] > 0) and (min > c[i]) then
        begin
          min:=c[i];
        end;
    end;
Result:=min;
end;

Function SerArf():real;
Var i:byte;
    Sum:real;
begin
  for i:=1 to 7 do
    begin
      Sum:=sum + x[i];
    end;
  result:=sum/7;
end;

function MinEl(var a:MyArray; N:integer):integer;
Var i,min:integer;
begin
  min:=32640;
  for i:=1 to n do
    begin
      if (i mod 2 = 0) and (min > a[i]) then
        begin
          min:=a[i];
        end;
    end;
   result:=min;
end;

begin
  Write('Введіть кількість елементів:');
  Readln(kil);
  repeat
  ClrScr;
  Writeln('===Меню===');
  Writeln('1 - Ввод змінного масива');
  Writeln('2 - Вивод змінного масива');
  Writeln('3 - Заповнення змінного масива (случайно)');
  Writeln('4 - Завдання 12');
  Writeln('5 - Завдання 11');
  Writeln('6 - Завданя 14 (Заповніть перед завдання масив)');
  Readln(punkt);
  Case punkt of 
    '1':begin
          Vvod(numbers,kil);
          Readln();
        end;
    '2':begin
          Vivod(numbers,kil);
          Readln();
        end;
    '3':begin
          RandVvod(numbers,kil);
          Readln();
        end;
    '4':begin
          Write('Заданий масив:');
          Vivod_const();
          Writeln('Мінімальний елемент серед додатніх:', MinNegEl);
          Readln();
        end;
    '5':begin
          Write('Заданий масив: ');
          Vivod_const_2;
          Writeln('Середнє арифметичне значення:',SerArf:6:3);
          Readln();
        end;
    '6':begin
          Writeln('Масив:');
          Vivod(numbers,kil);
          Writeln('Мінімальний елемент, що мають парний номера ',MinEl(numbers,kil));
          Readln();
        end;
   end;
  until false;
end.
  