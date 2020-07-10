
Const CSize = 40;
Type MyArray = array[1..CSize] of string;
var arr:MyArray;
    s:string;
    n:integer;
    
procedure ParseString(var s:string; var a:MyArray);
Var i,w:integer;
    c:char;
begin
  w:=0;
  c:=Char(32);
  for i:=1 to Length(s) do
    begin
      if (ORd(s[i]) > 32) then
        begin
          if (Ord(c) <= 32) then
              w:=w+1;
          a[w]:=a[w] + s[i];
        end;
       c:=s[i];
    end;
end;

function SortSymbol(n:integer; a:MyArray):string;
Var i,j:integer;
    t:char;
    s:string;
begin
  s:=a[n];
{Сортировка самого слова}    
  for i:=1 to Length(s)-1 do
    begin
      for j:=1 to Length(s)-i do
        begin
          if Ord(s[j]) > ORD(s[j + 1]) then
            begin
              t:=s[j];
              s[j]:=s[j+1];
              s[j+1]:=t;
            end;
        end;
    end;
    result:=s;
end;


begin
  Writeln('Введите строку:');
  Readln(s);
  ParseString(s, arr);
  Writeln('Введіть номер слова, яке потрібно впорядкувати: ');
  Readln(n);
  Writeln(SortSymbol(n, arr));
end.