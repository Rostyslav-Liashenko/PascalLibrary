Program zapis;
Var
  f:text;
  
procedure InpFile(txt:text);
Var i:integer;
begin
  Assign(txt,'C:\Users\Patron\Desktop\Algotithm\text\news.txt');
  ReWrite(txt);
  for i:=1 to 10 do
    begin
      Writeln(f,i);
    end;
  Close(txt);
end;

procedure outFile(txt:text);
Var s:string;
begin
  Assign(txt,'C:\Users\Patron\Desktop\Algotithm\text\news.txt');
  Reset(txt);
  while not EOF(f) do
    begin
      Readln(f,s);
      Writeln(s);
    end;
   Close(txt);
end;

begin
  inpFile(f);
  outFile(f);
end.