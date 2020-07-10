Program Sum;
type MyArray = array[1..100] of integer;
Var numbers1,numbers2:MyArray;
    sum1,sum2,kil:integer;
    
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

function SumMas(var a:MyArray; n:integer):integer;
Var i:byte;
    S:integer;
begin
  S:=0;
  for i:=1 to n do S:=S+a[i];
  SumMas:=s;
end;

procedure Rel(a,b:integer);
begin
  if a = b then
    Writeln('Сума елементів рівна')
  else
    begin
      if a > b then
        Writeln('Сума елементів першого масива більше за суму другого')
      else
        Writeln('Сума елементів другого масива быльше за суму першого');
    end;
end;

begin
  Writeln('Введіть кількість елементів першого масива: ');
  Readln(kil);
  RandVvod(numbers1,kil);
  Writeln('Введіть кількість елементів другого масива: ');
  Readln(kil);
  RandVvod(numbers2,kil);
  Writeln('1 масив');
  Vivod(numbers1,kil);
  Writeln('2 масив');
  Vivod(numbers2,kil);
  sum1:=SumMas(numbers1,kil);
  sum2:=SumMas(numbers2,kil);
  Writeln('Сума елементів першого массива: ',sum1);
  Writeln('Сума елементів другого массива: ',sum2);
  Rel(sum1,sum2);
end.