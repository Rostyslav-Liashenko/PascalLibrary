Program dz;
Uses Crt;
type words = array[1..20] of string;
Var
  arrWords:words;
  s:string;
  i,kil:integer;
  CountPol:word;
  
procedure ParseString(s:string; var a:words);
Var i:integer;
    c:char;
    w:word;
begin
  c:=Char(32);
  for i:=1 to length(s) do
    begin
      if Ord(s[i]) > 32 then
        begin
          if ord(c) <= 32 then
              w:=w+1;
            a[w]:=a[w] + s[i]
        end;
        c:=s[i];
    end;
end;

function len(var a:words):integer;
Var i:integer;
begin
  for i:=1 to 20 do
    if a[i] <> '' then
      result:=result+1;
end;

function Polindrom(s:string):boolean;
Var i:integer;
begin
  for i:=1 to length(s) do
    begin
      if s[i] = s[Length(s)-i+1] then
          result:=true
      else
          result:=false;
    end;
end;

begin
  countPol:=0;
  Writeln('Введіть рядочок: ');
  Readln(s);
  ParseString(s, arrWords);
  kil:=len(arrWords); {килькисть слов в рядку}
  for i:=1 to kil do
    begin
      if Polindrom(arrWords[i]) then
        Inc(CountPol)
    end;
  Writeln('Кількість поліндромів: ', countPol);
end.