Program Dz;
Type MyArray = array[1..20] of integer;
Var z1,z2:MyArray;
    kil1,kil2:integer;

Procedure Vivod(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      write(a[i]:4);
    end;
  Writeln;
end;

Procedure ZapRand(var a:MyArray; n:integer);
Var i:integer;
begin
  Randomize;
  for i:=1 to n do
    begin
      a[i]:=Random(20)-10;
    end;
end;


function Even(var a:MyArray; n:integer):integer;
Var count,i:integer;
begin
  for i:=1 to n do
    begin
      if a[i] mod 2 = 0 then
        begin
          count:=count + 1;
        end;
    end;
  Even:=count;
end;

function SumNotEvenIndex(var a:MyArray; n:integer):integer;
Var i:integer;
    s:integer;
begin
  s:=0;
  for i:=1 to n do
    begin
      if i mod 2 <> 0 then
        begin
         s:=s+a[i];
        end;
    end;
  SumNotEvenIndex:=s;
end;

begin
  Write('Введіть кількість елементів 1 масиву:');
  Readln(kil1);
  ZapRand(z1,kil1);
  Write('Введіть кількість елементів 2 масиву:');
  Readln(kil2);
  ZapRand(z2,kil2);
  Writeln('1 масив');
  Vivod(z1,kil1);
  Writeln('2 масив');
  Vivod(z2,kil2);
  Writeln('Кількість парних елементів масива 1: ', Even(z1,kil1));
  Writeln('Кількість парних елементів масива 2: ', Even(z2,kil2));
  Writeln('Сума елементів з непарними індексами 1 масива: ', SumNotEvenIndex(z1,kil1));
  Writeln('Сума елементів з непарними індексами 1 масива: ', SumNotEvenIndex(z2,kil2));
end.