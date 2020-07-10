type byteSet = set of byte;
Var a,b,c:byteSet;
    n,i:integer;
begin
  Writeln('Введіть N: ');
  Readln(n);
  for i:=1 to n do
    begin
      if i mod 2 = 0 then
        a:=a + [i];
      if i mod 3 = 0 then
        b:=b + [i];
    end;
 c:=a * b;
 Writeln('Множина що ділиться на 2: ');
 for i:=1 to n do
  if i in a then
    Write(i:4);
 Writeln;
 Writeln('Множина що ділиться на 3');
 for i:=1 to n do
  if i in b then
    Write(i:4);
 Writeln;
 Writeln('Множина, що ділиться на 6');
 for i:=1 to n do
  if i in c then
    Write(i:4);
 Writeln;
end.