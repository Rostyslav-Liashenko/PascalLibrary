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

function LastNeg(var a:MyArray; n:integer):integer;
Var i,nom:integer;
begin
  for i:=1 to n do
    begin
      if a[i] < 0 then
        nom:=i;
    end;
  if nom > 0 then
    result:=nom
  else
    result:=0;
end;

procedure InsertMas(var a:Myarray; var n:integer);
var nom,z,i:integer;
begin
 nom:=LastNeg(x,kil);
 if nom = 0 then
  begin
    Writeln('Негативних чисел не існує');
    exit;
  end;
 Write('введіть число для вставки: ');
 Readln(z);
 for i:=n+1 downto nom do
  a[i]:=a[i-1];
 a[nom]:=z; 
 n:=n+1;
end;

begin
  Write('Введіть кільксть елементів: ');
  Readln(kil);
  RandFull(x,kil);
  Print(x,kil);
  InsertMas(x,kil);
  Print(x,kil);
end.