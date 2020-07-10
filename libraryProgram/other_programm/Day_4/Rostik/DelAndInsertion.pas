Program lab;
Type MyArray = array[1..20] of integer;
Var x:MyArray;
    kil:integer;
    
procedure RandFull(var a:MyArray; n:integer);
Var i:byte;
begin
  for i:=1 to n do
    a[i]:=Random(20)-10;
end;

procedure Print(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      Write(a[i]:4);
    end;
  Writeln;
end;

PROCEDURE DelEl(var a:MyArray; var n:integer);
Var i:integer;
    nom:integer;
begin
  Write('Введіть номер елемента: ');
  Readln(nom);
  for i:=nom to n do 
    a[i]:=a[i+1];
  n:=n-1;
end;

procedure InsertMas(var a:Myarray; var n:integer);
var nom,z,i:integer;
begin
 Write('Введіть номер для вставки: ');
 Readln(nom);
 Write('введіть число для вставки: ');
 Readln(z);
 for i:=n+1 downto nom do
  a[i]:=a[i-1];
 a[nom]:=z; 
 n:=n+1;
end;

begin
  Write('Введіть кількість елементів масива: ');
  Readln(kil);
  RandFull(x,kil);
  Print(x,kil);
 // DelEl(x,kil);
  InsertMas(x,kil);
  Print(x,kil);
end.