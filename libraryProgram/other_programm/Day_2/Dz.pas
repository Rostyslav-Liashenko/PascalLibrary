Program Dz;
type MyArray = array[1..100] of integer;
Var numbers:MyArray;
    kil,z:integer;
    str:string[30];
    
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

procedure Vvod(var a:MyArray; n:integer);
Var i:byte;
begin
  for i:=1 to n do
    begin
      Write('a[',i,']=');
      Readln(a[i]);
    end;
end;

procedure zamina(var a:MyArray; n,z:integer);
Var i:byte;
begin
  for i:=1 to n do
    begin
      if a[i] < 0 then
        begin
          a[i]:=z;
        end;
    end;
end;

begin
  Write('Введіть кількість елементів: ');
  Readln(kil);
  Write('Введіть число z:');
  Readln(z);
  Writeln('Виберіть варіант заповнення масива');
  Writeln('1 - ручне');
  Writeln('інше число - случайним');
  Readln(str);
  if str = '1' then
     Vvod(numbers,kil)
  else
    RandVvod(numbers,kil);
  Writeln('ісходний масив');
  Vivod(numbers,kil);
  zamina(numbers,kil,z);
  Writeln('Перетворений масив');
  Vivod(numbers,kil);
end.