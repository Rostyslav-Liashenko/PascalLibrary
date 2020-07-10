Program zzz;
type slova = array[1..20] of string;
var 
  a:slova;
  s:String;
  kil:integer;
  
procedure ParseString(var a:slova; s:string; var count:integer);
Var c:char;
    w,i:integer;
begin
  c:=Char(32);
  for i:=1 to Length(s) do  
    begin
      if Ord(s[i]) > 32 then
        begin
          if Ord(c) <= 32 then
            w:=w+1;
          a[w]:=a[w] + s[i];
        end;
       c:=s[i];
    end;
   for i:=1 to 20 do
    if a[i] <> '' then
      count:=count+1;
end;

function Maxword(a:slova):integer;
Var max,i,index:integer;
begin
max:=Length(a[1]);
index:=1;
  for i:=1 to kil do
    begin
      if max < Length(a[i]) then
        begin
          max:=Length(a[i]);
          index:=i;
        end;
    end;
 result:=index;
end;

begin
  Writeln('введите строчку: ');
  Readln(s);
  ParseString(a,s,kil);
  Writeln('Найдовше слово це: ',a[MaxWord(a)]);
end.