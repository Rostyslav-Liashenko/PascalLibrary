Program zz;
Uses Crt;
Var s:string;

function Check(s:string):boolean;
Var i,j:integer;
    res:boolean;
begin
  res:=true;
  for i:=1 to Length(s) do
       if s[i] = ')' then
        begin
            for j:= i downto 1 do
              begin
                if s[j] = '(' then
                  begin
                    s[i]:='_';
                    s[j]:='_';
                    break;
                  end;
              end;
         end;
  for i:=1 to Length(s) do
    begin
      if (s[i] = ')') or (s[i] = '(') then
        res:=false;
    end;
  result:=res;
end;

begin
  Write('Введіть рядочок: ');
  Readln(s);
  if check(s) then
    Writeln('Збалансовано')
  else
    Writeln('Не збалансовано');
end.