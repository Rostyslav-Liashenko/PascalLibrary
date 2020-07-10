Program indv;
Uses Crt;
Var 
  a,b,z:integer;
  d:real;
  
Function mnoj(a,b:integer):integer;
begin
  result:= a * b;
end;

begin
  Write('Введите а: ');
  Readln(a);
  Write('Введите b: ');
  Readln(b);
  Write('Введите z: ');
  Readln(z);
  d:=(cos(mnoj(a,b)) - exp(mnoj(a,b)) + mnoj(a,b) + z ) / (cos(mnoj(a,z)) - exp(mnoj(a,z)) + mnoj(a,z) - b);
  Writeln('D = ', d:6:2);
end.