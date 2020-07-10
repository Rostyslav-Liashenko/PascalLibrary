Program dz;
type MyArray = array[1..20] of integer;
Var x,m:Myarray;
    kil:integer;
    kil2:integer;
    
procedure RandZap(var a:MyArray; n:integer);
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
end;

procedure Neg(var a:MyArray; n:integer);
var i:integer;
begin
kil2:=0;
  for i:=1 to n do 
  begin
    if a[i] < 0 then
      begin
        kil2:=kil2+1;
        m[kil2]:=a[i];
      end;
   end;
end;

begin
  Writeln('Введіть кількість елементів: ');
  Readln(kil);
  RandZap(x,kil);
  Writeln('Масив А');
  Vivod(x,kil);
  Neg(x,kil);
  Writeln('Масив B');
  if kil2 = 0 then
    Writeln('Відємних не існує')
  else
    vivod(m,kil2);
end.