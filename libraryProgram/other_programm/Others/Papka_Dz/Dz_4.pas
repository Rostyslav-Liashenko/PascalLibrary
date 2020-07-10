Program Dz_4;
Uses Crt;
Var bear1,bear2,massa:Real;
begin
  massa:=0;
  Write('Вага першого ведмедя - ');
  Readln(bear1);
  Write('Вага другого ведмедя - ');
  Readln(bear2);
  if bear1 > 200 then
    begin
      massa:=massa + bear1;
    end;
  if bear2 > 200 then
    begin
      massa:=massa + bear2;
    end;
 Writeln('Вага вантажівки - ', massa);
end.