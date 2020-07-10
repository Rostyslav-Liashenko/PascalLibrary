Program rl;
Var
  str:string;
  i,j:integer;
begin
  Writeln('Введіть рядок:');
  Readln(str);
  // начало проверки 
  for i:=1 to Length(str) do
    begin
      for j:= 1 to Length(str) do
        begin;
          if (i <> j) then
            begin
              if str[i] = str[j] then
                begin
                  str[j] := '_';
                end;
            end;
        end;
    end;
    Writeln(str);
end.