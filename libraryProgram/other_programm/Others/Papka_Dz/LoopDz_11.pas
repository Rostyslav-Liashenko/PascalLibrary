Program Loop_Dz11;
Uses Crt;
Var sum, num, a, pok, x:integer;

function pow(a:integer; step:integer):integer;
Var i,b:integer;
begin
  b:=1;
  if step = 0 then result:=1;
  if step = 1 then result:=a
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
  sum:=0;
  num:=7;
  a:=7;
  pok:=0;
  Write('Введіть x: ');
  Readln(x);
  while(num <> 0) do
    begin
      Write(num, ' + ');
      sum:= sum + num;
      a:=a-1;
      pok:=pok + 1;
      num:=a * pow(x,pok);
    end;
  Writeln;
  Writeln('Сума = ', sum);
end.