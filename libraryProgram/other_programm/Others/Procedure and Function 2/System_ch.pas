Program sedmoe;
Var m:string;

procedure Reverse(str:string);
Var i:byte;
begin
    for i:=Length(str) downto 1 do
    begin
      Write(str[i]);
    end;
end;

begin
  Write('Введіть число в 2 С/Ч: ');
  Readln(m);
  Reverse(m);
  Writeln();
end.