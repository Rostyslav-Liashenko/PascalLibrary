Program z;
Var s:string;
    i:integer;
    isPolindrom:boolean;
begin
  Writeln('Введіть слово: ');
  Readln(s);
  isPolindrom:=true;
  for i:=1 to Length(s) do
     if s[i] <> s[Length(s)-i+1] then
      begin
       isPolindrom:=false;
       break;
      end;
  if isPolindrom then
    Writeln('Слово є паліндроном')
  else
    Writeln('Слово не є паліндроном');
  
end.