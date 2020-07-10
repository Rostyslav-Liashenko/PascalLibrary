Program Loop_dz9;
Uses Crt;
Var t:integer;
    v,h:real;
begin
  Writeln('Hello');
  h:=3000;
  v:=200;
  t:=0;
  while(h < 4200) do
    begin
      h:=h + v;
      v:= v * 0.9;
      t:=t+1;
    end;
 Writeln('Час - ', t);
end.