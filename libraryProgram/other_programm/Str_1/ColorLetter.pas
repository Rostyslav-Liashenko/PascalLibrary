Program zz;
Uses Crt;
Var s:string;
    color,i:integer;
begin
  Randomize;
  Write('Введіть строку:');
  Readln(s);
  for i:=1 to Length(s) do
    begin
      color:=Random(14)+1;
      TextColor(color);
      gotoXY(Random(40)+1,Random(40)+1);
      Write(s[i]);
    end;
TextColor(White);
end.