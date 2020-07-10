const CSize = 40;
type MyArray = array[1..CSize] of string;
var arr:MYarray;
    s:string;
    i:integer;
    
procedure Parse(const S:string; var a:MyArray);
Var 
  i:integer;
  w:integer;
  c:char; {преведущий символ, для пробела буду использовать, первый раз}
begin
  For i:=1 to CSize do a[i]:=''; {Заполняємо пустими строками}
  w:=0;
  c:=Char(32);
  for i:=1 to Length(s) do
    begin
      if (Ord(s[i]) > 32) then
        begin
          if (Ord(c) <= 32) then Inc(w);
          a[w]:=a[w] + s[i];
        end;
        c:=S[i];
    end;
end;

procedure PrintColumnWord(var a:MyArray);
Var i:integer;
begin
  for i:=1 to CSize do
    begin
      if a[i] = '' then
        break;
      Writeln(i,' слово ' +a[i]);
    end;
end;

procedure space(var s:string);
Var i:integer;
begin
end;

function Palindrom(var s:string):boolean;
var s2:string;
    j:byte;
    i:integer;
begin
  j:=1;
  for i:=1 to length(s) do
    begin
      s2[1]:='к';
    end;
    
  for i:=Length(s) downto 1 do
    begin
      s2[j]:=s[i];
      Inc(j);
    end;
   Writeln(s2);
   result:=True;
end;

begin
  Writeln('Введите строку: ');
  Readln(s);
  Palindrom(s);
end.