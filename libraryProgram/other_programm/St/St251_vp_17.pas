Program zzz;
type slova = array[1..20] of string;
var 
  a:slova;
  s:String;
  kil,i:integer;
  
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
      if i mod 2 <> 0 then
        begin
        if max < Length(a[i]) then
          begin
            max:=Length(a[i]);
            index:=i;
          end;
        end;
    end;
 result:=index;
end;

begin
  Writeln('Введите строчку: ');
  REadln(s);
  parseString(a,s,kil);
  for i:=1 to kil do
    begin
      if i mod 2 <> 0 then
        write(a[i],' ');
    end;
  Writeln;
  Writeln('Найдовше не парне: ', a[MaxWord(a)]);
  
end.