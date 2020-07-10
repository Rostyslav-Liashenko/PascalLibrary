Program zav_1;
Var str:string;
    i:integer;
//Скільки раз зустрічається буква в слові
procedure CountKil(var s:string; ch:char);
Var i,count:integer;
begin
  count:=0;
  for i:=1 to Length(s) do
    if s[i]= ch then
      begin
        count:=count+1;
        s[i]:='_';
      end;
   if  not(ch = '_') then
      Writeln(ch,' - ',count);
end;

begin
  Writeln('Введіть строку: ');
  Readln(str);
  for i:=1 to Length(str) do
    countKil(str,str[i]);
end.