Program inTwoFile;
Var 
  inp,out1,out2:text;
  s:string[40];
  count:integer;
begin
  Assign(inp,'C:\Users\Patron\Desktop\Algotithm\text\in.txt');
  Reset(inp);
  Assign(out1,'C:\Users\Patron\Desktop\Algotithm\text\out1.txt');
  ReWrite(out1);
  Assign(out2,'C:\Users\Patron\Desktop\Algotithm\text\out2.txt');
  ReWrite(out2);
  count:=1;
  while Not EOF(inp) do
    begin
      Readln(inp, s);
      if (count mod 2 = 0) then
         Writeln(out2,s)
      else
        Writeln(out1,s);
      INc(count);
    end;
  Close(inp);
  Close(out1);
  Close(out2);
end.