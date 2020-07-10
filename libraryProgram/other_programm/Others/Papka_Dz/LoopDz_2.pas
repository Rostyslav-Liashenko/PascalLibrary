Program LoopDz_2;
Var a:Real;
    n:integer;

function pow(a:integer; step:integer):real;
Var i,b:integer;
begin
  b:=1;
  if step = 0 then result:=1
  else
    begin
      for i:=1 to step do
        begin
           b:=b * a; 
        end;
       result:=b;
    end;
end;

begin
  n:=0;
  Writeln('Введіть число А: ');
  Readln(a);
  while(a > pow(2,n)) do
    begin
      n:= n + 1;
    end;
  Writeln('Мінімальне значення n - ', n);
end.