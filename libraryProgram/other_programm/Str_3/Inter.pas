Program pfpfp;
type MyArray = array[1..20] of string;
var 
    Arr:MyArray;
    s,s1:string;
    kil,i:integer;
    
procedure ParseString(s:string; var a:Myarray; var kil:integer);
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
  kil:=0;
  for i:=1 to 20 do
    begin
      if a[i] <> '' then
        begin
          kil:=kil+1;
        end;
    end;
end;

function reverse(var s:string):string;
Var i:integer;
    t:char;
begin
  for i:=1 to length(s) div 2 do
    begin
      t:=s[i];
      s[i]:=s[Length(s)-i+1];
      s[Length(s)-i+1]:=t;
    end;
   result:=s;
end;

function SortSymbol(s:string):string;
Var i,j:integer;
    t:char;
begin
  for i:=1 to Length(s) do
    begin
      for j:=1 to Length(s) - i do
        begin
          if s[i] < s[i+1] then
            begin
              t:=s[i];
              s[i]:=s[i+1];
              s[i+1]:=t;
            end;
        end;
    end;
   result:=s;
end;

begin
  Writeln('Введіть рядок');
  Readln(s);
  ParseString(s, Arr, kil);
 // Writeln('Кількість слов = ',kil);
  for i:=1 to kil do
    begin
      if i mod 2 = 0 then
        begin
          s1:=s1 + reverse(Arr[i]) + ' ';
        end
      else
        begin
          s1:=s1 + SortSymbol(Arr[i]) + ' ';
        end;
    end;
  Writeln('Новий рядок: ');
  Writeln(s1);
end.