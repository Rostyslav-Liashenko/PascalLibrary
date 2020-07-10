Program dz2;
type charset = set of char;
Const gollet = ['а','е','є','и','і','ї','о','у','ю','я','A','Е','Є','И','І','Ї','О','У','Ю','Я'];
Var s:string;
    gol,i,prug:integer;
begin
  Writeln('Введіть рядок: ');
  Readln(s);
  for i:=1 to Length(s) do
    begin
      if s[i] in gollet then
        gol:=gol + 1
      else
        if s[i] <> char(32) then
          prug:=prug+1;
    end;
    
  Writeln('Голосних букв в словах:',gol);
  Writeln('Приголосних букв в словах:',prug);
  if prug = gol then
    Writeln('Буква рівно')
  else
    begin
      if prug > gol then
        Writeln('Приголосних більше')
      else
        Writeln('Голосних більше');
    end;
end.