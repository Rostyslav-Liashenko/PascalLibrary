Program zzz;
type slova = array[1..20] of string;
var 
  a1,a2:slova;
  s1,s2:String;
  kil1,kil2,i,j:integer;
  
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

begin
  Writeln('Введіть перший рядок: ');
  Readln(s1);
  ParseString(a1,s1,kil1);
  Writeln('Введіть другий рядок: ');
  Readln(s2);
  ParseString(a2,s2,kil2);
  for i:=1 to kil2 do
    begin
      for j:=1 to kil1 do
        begin
          if a2[i] = a1[j] then
            a2[i]:='__'
        end;
    end;
   Writeln('Новий рядок');
   for i:=1 to kil2 do
    if a2[i] <> '__'then
      Write(a2[i],' ');
   Writeln;
end.