Program hard;
Uses Crt;
type MyArray = array[1..20] of real;
Var a,b,c:MyArray;
    R,Pa,pb,Pc:Real;
    kil:integer;
    
procedure Print(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
      Write(a[i]:10:3,'     ');
  Writeln;
end;

procedure RandFull(var a:Myarray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    a[i]:=Random(20)-10;
end;

procedure Calc(var a,b:MyArray; n:integer);
Var i:integer;
begin
  TextColor(Red);
  Writeln;
  Writeln('Розрахунок');
  for i:=1 to n do
    begin
      b[i]:=exp(c[i]);
      Writeln('b[',i,'] = ', b[i]:8:3);
      a[i]:=abs(c[i]) + abs(b[i]);
      Writeln('a[',i,'] = ','|',c[i]:8:3,'| + |',b[i]:8:3,'| = ', a[i]:8:3);
      Writeln;
    end;
  Writeln('Розрухунок завершен');
  Writeln;
end;

function MaxEl(var a:MyArray; n:integer):real;
Var i:integer;
    max:Real;
begin
  max := a[1];
  for i:=2 to n do
    begin
      if max < a[i] then
        begin
          max:=a[i];
        end;
    end;
   result:=max;
end;

begin
Write('Введіть кількість елементів масивів: ');
Readln(kil);
RandFull(c,kil);
Writeln('Масив С: ');
Print(c,kil);
Calc(a,b,kil);
TextColor(White);
Writeln('Два сформовані масива: ');
Writeln('Масив B: ');
Print(b,kil);
Writeln('Масив А: ');
Print(A,kil);
Writeln;
Textcolor(Red);
Writeln('Максимальні елементи: ');
Writeln;
PA:=MaxEl(a,kil);
PB:=MaxEl(b,kil);
PC:=MaxEl(c,kil);
Writeln('PA = ',PA:8:3);
Writeln('PB = ',PB:8:3);
Writeln('PC = ', PC:8:3);
R:=PA + Pb - PC * Pc;
TextColor(Green);
Writeln;
Writeln('R = ', R:8:3);
TextColor(White);
end.  