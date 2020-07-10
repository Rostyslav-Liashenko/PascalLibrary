Program x;
const SizeMas = 10;
type BoxString = array[1..SizeMas] of string;
Var arr:BoxString;
    s,ShortStroka:string;
    position:byte;

procedure ParseString(s:string; var a:BoxString);
 var w,i:integer;
     c:char;
begin
  w:=0;
  c:=Char(32);
  for i:=1 to Length(s) do
    begin
      if Ord(s[i]) > 32 then
        begin
          if ord(c) <=32 then
              w:=w+1;
          a[w]:=a[w]+s[i];
        end;
       c:=s[i];
    end;
end;

{
procedure Print(var a:BoxString);
Var i:integer;
begin
  for i:=1 to SizeMas do
    begin
      if a[i] = '' then
        break;
      Writeln(a[i]);
    end;
end;
}

function MinLengthWord(var a:BoxString):string;
Var i,t:integer;
    min:integer;
begin
  min:=30000;
  for i:=1 to SizeMas do
    begin
      if a[i] = '' then
        break;
      if min > Length(a[i]) then
        begin
          min:=Length(a[i]);
          position:=pos(a[i],s);
          t:=i;
        end;
    end;
  result:=a[t];
end;

begin
  Writeln('Введіть строку: ');
  Readln(s);
  ParseString(s, arr);
  ShortStroka:=MinLengthWord(arr);
  Writeln('Найкоротше слово: ', ShortStroka);
  Writeln('Позиція слова: ', position);
end.