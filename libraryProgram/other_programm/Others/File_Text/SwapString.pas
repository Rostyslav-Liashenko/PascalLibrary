Program stroka;
Var f1,f2:text;
  s1,s2:string[40];
begin
  Assign(f1,'C:\Users\Patron\Desktop\Algotithm\text\in.txt');
  Reset(f1);
  Assign(f2,'C:\Users\Patron\Desktop\Algotithm\text\out.txt');
  ReWrite(f2);
  while not Eof(f1) do
    begin
      Readln(f1,s1);
      Readln(f1,s2);
      if s2 <> char(32) then
          Writeln(f2,s2);
      if s1 <> char(32) then
          Writeln(f2,s1);
    end;
  Close(f1);
  Close(f2);
end.