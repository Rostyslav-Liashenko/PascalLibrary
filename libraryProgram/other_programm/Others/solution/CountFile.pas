Program CountFile;
Var f1,f2:text;
n:integer;
s:string;
begin
  Assign(f1, 'C:\t\1.txt');
  Assign(f2, 'C:\t\2.txt');
  reset(f1);
  rewrite(f2);
  n:=0;
  While not EOF(f1) do
    begin
      Readln(f1,s);
      Write(f2,n, ') ');
      Writeln(f2,s);
      n:=n+1;
    end;
    Close(f1);
    Close(f2);
end.