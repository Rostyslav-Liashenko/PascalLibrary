Program table;
Var r,c:integer;
begin
  write(' ':4);
  for c:=0 to 15 do write(c:4);
  writeln;
  writeln;
  for r:=0 to 15 do
    begin
      Write(r:4);
      for c:=0 to 15 do
        write(chr(r*16 + c):4);
      Writeln;
      Writeln;
    end;
end.