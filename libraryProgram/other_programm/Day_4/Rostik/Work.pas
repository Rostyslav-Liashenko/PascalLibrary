Program Dz;
Uses Crt;
type MyArray = array[1..100] of integer;
VaR 
  numbers,numbers2:MyArray;
  t,max1,max2,kil,kil2,z:integer;
  Punkt:char;
  
procedure RandVvod(var a:MyArray; n:integer);
Var i:byte;
begin
  for i:=1 to n do
    a[i]:=Random(30)-10;
end;

procedure vivod(var a:MyArray; n:integer);
Var i:byte;
begin
  for i:=1 to n do
    Write(a[i]:4);
  Writeln;
end;

procedure zamina(var a:MyArray; n:integer; z:integer);
Var i:byte;
begin
  for i:=1 to n do
    if a[i] < 0 then
      a[i]:=z;
end;

procedure countElement;
begin
  Write('Введи кількість елементів: ');
  Readln(kil);
end;

function SumNegativeElement(var a:MyArray; n:integer):integer;
var i:byte;
    s:integer;
begin
  for i:=1 to n do
    if a[i] < 0 then
      s:=s+a[i];
  result:=s;
end;

procedure FindElement(var a:MyArray; n:integer);
Var nx,x:integer;
    i:integer;
begin
  Write('Введіть число для пошуку:');
  Readln(x);
  nx := 0;
  for i:=1 to n do
    if a[i] = x then
      begin
        nx:=i;
        break;
      end;
  if nx < 1 then Writeln('Не знайдено')
  else
    Writeln('A[',nx,'] = ', x);
end;

function MaxEl(a:MyArray; n:integer):integer;
Var iMax:integer;
    i:integer;
begin
  Imax:=1;
  for i:=2 to n do
    begin
      if a[i] > a[IMax] then
        IMax:=i;
    end;
MaxEl:=IMax;
end;

procedure TwoArray;
begin
  Write('Введіть кількість елементів першого масива: ');
  Readln(kil);
  RandVvod(numbers,kil);
  Write('Введіть кількість елементів другого масива: ');
  Readln(kil2);
  RandVvod(numbers2,kil2);
end;

function Even(var a:MyArray; n:integer):integer;
Var count,i:integer;
begin
  count:=0;
  for i:=1 to n do
    if a[i] mod 2 = 0 then
      count:=count+1;
  Even:=count;
end;

Function SumNotEvenIndex(var a:MyArray; n:integer):integer;
Var i:integer;
    S:Integer;
begin
  s:=0;
  for i:=1 to n do
      if i mod 2 <> 0 then
        s:=s+a[i];
  result:=s;
end;
begin
  repeat
  ClrScr;
  Writeln('Меню');
  Writeln('1 - число z менше нуля');
  Writeln('2 - Сума елементів меншу нуля');
  Writeln('3 - Пошук заданого елемента');
  Writeln('4 - поміняти місцями максимум');
  Writeln('5 - Дз');
  Readln(punkt);
  case punkt of 
    '1':begin
          countElement;
          Write('Введи число z: ');
          Readln(z);
          RandVvod(numbers,kil);
          Writeln('Ісходний масив');
          Vivod(numbers,kil);
          zamina(numbers,kil,z);
          Writeln('перетворений масив');
          vivod(numbers,kil);
          Readln();
        end;
    '2':begin
          countElement;
          RandVvod(numbers,kil);
          Writeln('Ісходний масив');
          Vivod(numbers,kil);
          Writeln('Сума мінусових елементів: ',SumNegativeElement(numbers,kil));
          Readln();
        end;
    '3':begin
          countElement;
          RandVvod(numbers,kil);
          Writeln('Ісходний масив');
          Vivod(numbers,kil);
          FindElement(numbers,kil); 
          Readln();
        end;
    '4':begin
          TwoArray;
          WRiteln('Перший масив');
          Vivod(numbers,kil);
          Writeln('Другий масив');
          Vivod(numbers2,kil2);
          max1:=MaxEl(numbers,kil);
          max2:=MaxEl(numbers2,kil2);
          Writeln('Індекс максимальне першого масива: ', max1,' значення:',numbers[max1]);
          Writeln('Індекс максимальне другого масива ', max2,' значення:',numbers2[max2]);
          t:=numbers[max1];
          numbers[max1]:=numbers2[max2];
          numbers2[max2]:=t;
          WRiteln('Перший масив');
          Vivod(numbers,kil);
          Writeln('Другий масив');
          Vivod(numbers2,kil2);
          Readln();
       end;
    '5':begin
        TwoArray;
        WRiteln('Перший масив');
        Vivod(numbers,kil);
        Writeln('Другий масив');
        Vivod(numbers2,kil2);
        Writeln('Кількість парних елементів масива 1: ', Even(numbers,kil));
        Writeln('Кількість парних елементів масива 2: ', Even(numbers2,kil2));
        Writeln('Сума елементів з непарним індексом:', SumNotEvenIndex(numbers,kil));
        Writeln('Сума елементів з непарним індексом:', SumNotEvenIndex(numbers2,kil2));
        Readln();
        end;
  end;
 until false;
end.