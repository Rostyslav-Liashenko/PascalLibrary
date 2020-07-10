program Rostik;
Uses Crt;

function test(a,b:integer):boolean;
begin
  if a mod b = 0 then
    begin
      test:=true;
    end
  else
    begin
      test:=false
    end;
end;

function division(a,b:integer):integer;
Var z:real;
begin
  z:=a/b;
  division:=Round(z);
end;

begin
  Writeln(test(20,4));
  Writeln(test(21,5));
  Writeln(Division(20,4));
  Writeln(Division(21,5));
end.