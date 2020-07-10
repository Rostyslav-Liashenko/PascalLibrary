Program zav_1;
Var str:string;

function reverse( s:string):string;
Var ch:char;
    i:integer;
begin
  for i:=1 to Length(s) div 2 do
    begin
      ch:=s[i];
      s[i]:=s[Length(s)-i+1];
      s[Length(s)-i+1]:=ch;
    end;
  result:=s;
end;

begin
  Write('Введіть строку: ');
  Readln(str);
  Writeln('Перевернута строка');
  Writeln(reverse(str));
end.