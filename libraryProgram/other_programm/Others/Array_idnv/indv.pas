Program Massive_super;
type myArray = array[1..7] of Real;
Var  i:integer;
  sum:Real;
  c:myArray;

begin
  c[1]:=8.7;
  c[2]:=-4;
  c[3]:=8.7;
  c[4]:=9.6;
  c[5]:=1.7;
  c[6]:=-13.6;
  c[7]:=-7.5;
  for i:=1 to 7 do
    begin
      if c[i] < 0 then
        begin
          sum:=sum + c[i];
        end;
    end;
  Writeln('Сума відємних елементів: ', sum);
end.