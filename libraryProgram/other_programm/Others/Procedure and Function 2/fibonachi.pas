Program fibonacchi;
Uses Crt;
Var n:integer;
procedure fib(n:integer);
Var a,b,c,i:integer;
begin
a:=0;
b:=1;
for i:=1 to n do
  begin
    Write(a+b,' ');
    c:=b;
    b:=a + b;
    a:=c;
  end;
end;

begin
  Write('Введіть кількість членів послідовності Фібоначчі: ');
  Readln(n);
  fib(n);
  Writeln();
end.