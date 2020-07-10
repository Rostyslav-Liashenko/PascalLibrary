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

procedure zam(var a:slova; n:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    begin
      for j:=1 to n do
        begin
          if (a[i] = a[j]) and (i <> j) then
            a[j]:='';
        end;
    end;
   for i:=1 to n do
    begin
      if a[i] <> '' then
        write(a[i],' ');
    end;
  Writeln;
end;

begin
  Writeln('Введіть рядок слів: ');
  Readln(s);
  ParseString(a,s,kil);
  zam(a,kil);
end.