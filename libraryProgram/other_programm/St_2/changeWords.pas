Program krasotka;
Var 
  r,r1,r2:string;
  k:integer;
begin
  Writeln('Введіть рядок:');
  Readln(r);
  Writeln('Замінити слово:');
  Readln(r1);
  Writeln('На слово:');
  Readln(r2);
  while pos(r1,r) <> 0 do
    begin
      k:=POS(r1,r);
      Delete(r,k,length(r1));
      Insert(r2,r,k);
    end;
  Writeln('Новий рядок:', r);
end.