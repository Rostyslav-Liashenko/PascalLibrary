Program indv_13;
type charset = set of char;
var
  s:string;
  mnoj1,mnoj2,mnoj3,mnoj4:charset;
  i,count:integer;
begin
  mnoj1:=['a'..'z','A'..'Z','а'..'я','А'..'Я', ' '];
  Write('Введіть рядок: ');
  Readln(s);
  for i:=1 to Length(s) do
    begin
      if  not(s[i] in mnoj1) then
        begin
          count:=count + 1;
        end;
    end;
  Writeln('Кількість символів, що не є літерами і пробелом: ', count);
end.