Program indv_2;
const n = 10;
type myArray = array[1..n] of integer;
Var mas:myArray;
    min:integer;

procedure INp( var ar:myArray);
Var i:integer;
begin
  for i:=1 to 10 do
    begin
      Write('Введіть ',i,' елемент масива: ');
      Readln(ar[i]);
    end;
end;

function minSort(ar:MyArray):integer;
Var min,i:integer;
begin
  min:=32767;
  for i:=1 to 10 do
    begin
      if ar[i] < min then
        begin
          min:=ar[i];
        end;  
    end;
    result:=min;
end;

begin
  Inp(mas);
  min := minSort(mas);
  Writeln('Мінімальне значення: ', min);
  min := mas[n];
  writeln('Замінене мінімальне значення: ',min);
  
end.