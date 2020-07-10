Program dz;
type MyArray = array[1..20] of integer;
Var 
  numbers1,numbers2:MyArray;
  kil1,kil2:integer;
  index1,index2:integer;
  
procedure RandVvod(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
      a[i]:=Random(20)-10;
end;

procedure Vivod(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    Write(a[i]:4);
  Writeln;
  Writeln;
end;

function FindEl(var a:MyArray; n:integer):integer; {повертає значення}
Var i,nx,x:integer;
begin
Write('Введи число яке потрібно знайти: ');
Readln(x);
nx:=0;
  for i:=1 to n do
    if a[i] = x then
      begin
        nx:=i;
        break;
      end;
 if 
  nx < 1 then
    begin
      Writeln('Елементу не знайдено');
      result:=0;
    end
 else
  result:=nx;
end;

procedure Change(var a,b:integer);
Var t:integer;
begin
  t:=a;
  a:=b;
  b:=t;
end;

begin
  Write('Введіть кількість елементів 1 масива: ');
  Readln(kil1);
  RandVvod(numbers1,kil1);
  Writeln;
  Writeln('1 масив: ');
  Vivod(numbers1,kil1);
  Write('Введіть кількість елементів 2 масива: ');
  Readln(kil2);
  RandVvod(numbers2,kil2);
  Writeln;
  Writeln('2 масив: ');
  Vivod(numbers2,kil2);
  index1:=FindEl(numbers1,kil1);
  index2:=FindEl(numbers2,kil2);
  change(numbers1[index1],numbers2[index2]);
  Writeln('1 масив: ');
  Vivod(numbers1,kil1);
  Writeln('2 масив: ');
  Vivod(numbers2,kil2);
end.