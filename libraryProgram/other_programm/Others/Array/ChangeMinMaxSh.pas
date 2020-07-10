Program Dz;
type MyArray = array[1..100] of integer;
Var numbers:MyArray;
    kil:integer;
    
procedure RandVvod(var a:MyArray; n:integer);
Var i:byte;
begin
  for i:=1 to n do
    a[i]:=Random(30)-10;
end;

procedure Vivod(var a:MyArray; n:integer);
Var i:byte;
begin
  for i:=1 to n do
    Write(a[i]:4);
  Writeln();
end;

function MaxEl(var a:MyArray; n:integer):integer;
Var IMax:byte;
    i:byte;
begin  
  IMax:=1;
  for i:=2 to n do
    begin
      if a[i] > a[iMax] then
        IMax:=i;
    end;
  MaxEl:=IMax;
  Writeln('Максимальний елемент:', a[IMax], ' індекс елемента - ',Imax);
  Writeln;
end;

function MinEl(var a:MyArray; n:integer):integer;
Var IMin:byte;
    i:byte;
begin  
  IMin:=1;
  for i:=2 to n do
    begin
      if a[i] < a[iMin] then
        IMin:=i;
    end;
  Writeln;
  Writeln('Мінімальний елемент:', a[Imin], ' індекс елемента -', IMin);
  Writeln;
  MinEl:=IMin;
end;

procedure Change(var a:MyArray; min,max:integer);
Var t:integer;
begin
  t:=a[min];
  a[min]:=a[max];
  a[max]:=t;
end;

begin
  Write('Введіть кількість елементів масивів: ');
  Readln(kil);
  RandVvod(numbers,kil);
  Writeln('Початковий масив: ');
  Vivod(numbers,kil);
  Change(numbers,MinEl(numbers,kil),MaxEl(numbers,kil));
  Writeln('Кінцевий массив');
  Vivod(numbers,kil);
  
end.