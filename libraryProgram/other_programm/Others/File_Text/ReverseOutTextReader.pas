Program pr;
Var
  f:text;
  i:word;
procedure ShowNString(n:integer); 
  Var s:string;
      count:integer;
begin
  count:=0;
  Reset(f);
  while not EOf(f) do
    begin
      Readln(f,s);
      count:=count + 1;
      if count = n then
        break;
    end;
    Writeln(s);
end;

function countString(txt:text):integer;
Var s:string[40];
    count:integer;
begin
  count:=0;
  Assign(txt,'C:\Users\Patron\Desktop\Algotithm\text\news.txt');
  Reset(txt);
  while not EOF(txt) do
    begin
      Readln(txt,s);
      count:=count + 1;
    end;
   result:=count;
  Close(txt);
end;

begin
  Assign(f,'C:\Users\Patron\Desktop\Algotithm\text\news.txt');
  Reset(f);
  for i:=CountString(f) downto 1 do
    begin
      showNString(i);
    end;
   Close(f);
end.