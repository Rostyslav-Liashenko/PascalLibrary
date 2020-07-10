Program sech;
Var
  f:text;
  
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

function countChar(txt:text):integer;
Var s:string[40];
    countChar:integer;
begin
  countChar:=0;
  Assign(txt,'C:\Users\Patron\Desktop\Algotithm\text\news.txt');
  Reset(f);
  while not EOF(txt) do
    begin
      Readln(txt,s);
      countChar:=countChar + Length(s);
    end;
   Close(txt);
   result:=countChar;
end;

function ShowChar(txt:text):integer;
Var s:string[40];
    count,i:integer;
begin
   count:=0;
   Assign(txt,'C:\Users\Patron\Desktop\Algotithm\text\news.txt');
   reset(txt);
   while not EOF(txt) do
    begin
      Readln(txt,s);
      for i:=1 to Length(s) do
        begin
          if s[i] <> Char(32) then
            begin
              count:=count+1;
            end;
        end;
    end;
    Close(txt);
    result:=count;
end;

begin
  Writeln('Количество строк - ',countString(f));
  Writeln('Количество всех символов - ',countChar(f));
  Writeln('Количество вводимых символов - ', ShowChar(f));
end.