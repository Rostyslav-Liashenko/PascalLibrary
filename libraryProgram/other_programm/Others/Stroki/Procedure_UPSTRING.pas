Program Stroka;
Var s:string;

procedure UpString(var s:string);
Var i:integer;
begin
  for i:=1 to Length(s) do
    begin
      s[i]:=UpCase(s[i]);
    end;
end;

begin
  Writeln('Введите стрроку: ');
  Readln(s);
  UpString(s);
  Writeln(s);
end.