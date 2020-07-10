Program fff;
Var
  all,count,i,m,m1,m2:integer;
Begin
  m:=0;
  all:=0;
while (true) do
  begin
    count:=0;
    if (m1 >= 32768) or (m2 >= 32768) then
      begin
        break;
      end;
    m:= m + 1;
    m1:=m * 6 - 1;
    m2:= m * 6 + 1;
    for i:=2 to m2 do
      begin
       if (m1 mod i = 0) then
        begin
         count:= count + 1;
        end;
        if (m2 mod i = 0) then
        begin
          count:=count + 1;
        end;
      end;
      if (count  = 2) then
       begin
          Writeln('Пара - ', m1, ', ', m2);
          all:=all+ 1;
        end
       else
       begin
        Writeln('Не пара - ', m1, ', ', m2);
       end;
   end;
   Writeln('Всього таких пар - ', all);
end.