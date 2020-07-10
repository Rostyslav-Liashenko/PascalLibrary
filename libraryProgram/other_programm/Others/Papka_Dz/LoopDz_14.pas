var
n,i,g,k:integer;
ar:array[1..1000] of integer;

function nsd(a,b:longint):longint;
begin
if b mod a = 0 then 
  nsd:=a
else 
  nsd:=nsd(b,a mod b);
end;

begin
  write('Введіть кількість чисел:');
  read(n);
  for i:=1 to n do
    read(ar[i]);
  g:=ar[1];
  for k:=2 to n do 
    g:=nsd(g,ar[i]);
  writeln('НСД = ',g);
end.