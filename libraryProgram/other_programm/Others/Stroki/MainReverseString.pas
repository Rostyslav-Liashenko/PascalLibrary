Program xxx;
var s:string;

procedure Right(var s:string);
Var i:integer;
    t:char;
begin
  t:=s[Length(s)];
  for i:= Length(s) downto 1 do
    begin
      if i = 1 then
        begin
          s[i]:=t;
          break;
        end;
      s[i]:=s[i-1];
    end;
end;

procedure Left(var s:string);
Var i:integer;
    t:char;
begin
  t:=s[1];
  for i:=1 to Length(s) do
    begin
     if i = Length(s) then
        begin
          s[i]:=t;
          break;
        end;
     s[i]:=s[i + 1];
    end;
end;

begin
  Writeln('Введите строку: ');
  Readln(s);
  Left(s);
  Writeln(s);
end.