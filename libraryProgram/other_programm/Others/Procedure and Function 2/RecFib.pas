Program rec;
Uses Crt;
Var i,n:integer;
function RecFib(n:integer):longint;
begin
   if n = 1 then result:=1;
   if n = 2 then result:=1;
   if n > 2 then result:=RecFib(n-2) + RecFib(n - 1);
end;

begin
  writeln('Введіть кількість чисел: ');
  Readln(n);
  for i:=2 to n+1 do
    begin
      Write(RecFib(i), ' ');
    end;
  Writeln();
end.