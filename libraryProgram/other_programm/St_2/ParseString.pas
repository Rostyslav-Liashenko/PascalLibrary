Program dz;
type masString = array[1..20] of string;
Var 
  words:masString;
  i:integer;
  s:string;
  
procedure ParsString(var a:masString; s:string);
Var i:integer;
    w:word;
    c:char;
begin
  w:=0;
  c:=Char(32);
  for i:=1 to Length(s) do
    begin
      if Ord(s[i]) > 32 then
        begin
          if Ord(c) <=32 then
            w:=w+1;
          a[w]:=a[w] + s[i];
        end;
      c:=s[i];
    end;
end;

begin
  Writeln('Введіть рядочок: ');
  Readln(s);
  ParsString(words, s);
  for i:=1 to 5 do
    Writeln(words[i]);
  
end.