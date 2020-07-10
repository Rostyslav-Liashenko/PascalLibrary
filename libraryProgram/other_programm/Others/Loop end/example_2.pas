Program Example_2;
Var
  a,s:integer;

begin
{
a:=1;
S:=1;
  repeat
    a:=2 * a;
    s:=s + 2;
    Writeln(a , ' ', S);
  until a > 10;
Writeln(a, s);
}
a:= 1;
repeat
  a:= a + 2;
  Writeln(a);
until a = 4;
end.