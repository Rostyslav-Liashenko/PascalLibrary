
Program Many;
Var s,s2:string;

function ManyWord(s, s2:string):boolean;
var I,J:integer;
    CountSymbol:byte;
begin
  if Length(s) < Length(s2) then
    begin
      result:=false;
    end
  else
    begin
      for i:=1 to Length(s2) do
        begin
          for j:=1 to Length(s) do
            begin
              if s2[i] = s[j] then
                begin
                  countSymbol:=countSymbol + 1;
                  break;
                end;
            end;
        end;
        if CountSymbol = Length(s2) then
        result:=true;
      end;  
end;

begin
  write('Введите первое слово: ');
  Readln(s);
  Write('Введите второе слово: ');
  Readln(s2);
  if ManyWord(s,s2) then
    Writeln('Можна из первого найти второе')
  else
    Writeln('Не можна найти из первого второе');
end.