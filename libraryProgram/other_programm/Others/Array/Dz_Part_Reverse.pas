Program Sum;
type MyArray = array[1..10] of integer;
Var numbers:MyArray;
    kil:integer;
    
procedure RandVvod(var a:MyArray; n:integer);
Var i:byte;
begin
  for i:=1 to n do
    a[i]:=Random(21)-10;
end;

procedure Vivod(var a:MyArray; n:integer);
Var i:byte;
begin
  for i:=1 to n do
    Write(a[i]:4);
  Writeln();
end;

procedure Change(var a,b:integer);
Var t:integer;
begin
  t:=a;
  a:=b;
  b:=t;
end;

Procedure Revers(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n div 2 do
    begin
      change(a[i],a[N+1-i]);
    end;
end;


procedure Revers_v_3(var a:MyArray);
var i,j:integer;
begin
  j:=1;
  for i:=1 to 2 do Change(a[i], a[5+1-i]);
  for i:=6 to 7 do Change(a[i],a[15+1-i]);
end;

Procedure Revers_v_2(var a:MyArray; n:integer);
Var i,j:integer;
    num1,num2:MyArray;
begin
  j:=1;
  for i:=1 to N div 2 do
    begin
      num1[i]:=a[i];
    end;
  Revers(num1,i);
  for i:=(n div 2 + 1) to n do
    begin
      num2[j]:=a[i];
      j:=j+1;
    end;
  Revers(num2,j-1);
  for i:=1 to n div 2 do
    begin
      a[i]:=num1[i];
    end;
   j:=1;
  for i:=(n div 2 + 1) to n do
    begin
      a[i]:=num2[j];
      j:=j+1;
    end;
end;

begin
  Writeln('Введіть кількість елементів:');
  Readln(kil);
  RandVvod(numbers,kil);
  Writeln('Ісходний массив:');
  Vivod(numbers,kil);
  Writeln('Перетворенний масив: ');
  Revers_V_2(numbers,kilD);
  Vivod(numbers,kil);
end.