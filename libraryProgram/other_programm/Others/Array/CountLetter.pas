type TCounts = array ['a'..'z'] of integer;

Var Counts:TCounts;
    c:char;
    f:text;
    num:integer;
begin
  num:=0;
  for c:='a' to 'z' do
    begin
      Counts[c] := 0;
    end;
  Assign(f, 'C:\Users\Patron\Desktop\Algotithm\text\1.txt');
  Reset(f);
  while not EOF(f) do
    begin
      Read(F,c);
        if c in ['a'..'z']
          then Counts[c]:=Counts[c]+1;
   end;
   Close(f);
   
   for c:='a' to 'z' do
    begin
      num:=num+1;
      if num = 10 then
        begin
          Writeln('Нажмите Enter, что бы продолжить');
          Readln();
          num:=0;
        end;
      Writeln(c, Counts[c]:6);
    end;
 end.