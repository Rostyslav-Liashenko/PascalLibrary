 Program qq;
 {рекурсія страшна штука просто жесть}
function RecAref(a1, d,n:integer):integer;
begin
  if n > 1 then result := RecAref(a1, d, n - 1) + d
  else 
    begin 
      result := a1; 
      exit;
    end;
end;
 
var
  a1, d, n: integer;

begin
  write('a1 = ');
  readln(a1);
  write('d = ');
  readln(d);
  write('Введiть порядковий номер n: ');
  readln(n);
  writeln(n, '-й член прогресiї: ', RecAref(a1, d, n))
end.