Program rad_1;
type 
  massword = array[1..10] of string[10];
Var
  b:massword;
  str,plus:string;
  i,n,len:byte;

procedure Text_word(str:string; Var words:massword; var f:byte);
Var 
  p:byte;
  text:string;
begin
  f:=0;
     text:=str+' ';
  repeat
  p:=pos(' ',text);
  if p>1 then
    begin
      f:=f+1;
      words[f]:=copy(text,1,p-1);
      delete(text,1,p);
    end;
  until text='';
end;

begin
  Writeln('Введіть текст:');
  Readln(str);
  Text_word(str,b,n);
  Writeln('Всього слів = ', n);
  writeln('Слова в якіх одинакових 1-а та остання буква: ');
  for i:=1 to n do
    begin
      plus:=b[i];
      if plus[1] = plus[length(plus)] then
        begin
          Writeln(b[i]);
        end;
    end;
end.