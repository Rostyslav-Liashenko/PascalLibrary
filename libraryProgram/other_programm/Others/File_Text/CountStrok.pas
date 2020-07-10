Program stroka;
Var f1,f2:text;
  s:string[40];
  count:word;
begin
  Assign(f1,'C:\Users\Patron\Desktop\Algotithm\text\in.txt');
  Reset(f1);
  Assign(f2,'C:\Users\Patron\Desktop\Algotithm\text\out.txt');
  ReWrite(f2);
  count:=1;
  while Not Eof(f1) do  
    begin
      Readln(f1,s);
      Writeln(f2,count);
      Writeln(f2,s);
      Inc(count);
    end;
   Close(f1);
   Close(f2);
end.