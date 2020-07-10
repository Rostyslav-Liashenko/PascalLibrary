Program LoopDz_5;
Uses Crt;
Var v0:Real;
    i:integer;
begin
  v0:=10;
  for i:=1 to 10 do
    begin
      TextColor(Red);
      Writeln(i,' секунда');
      TextColor(White);
      v0:=v0 + (v0 * 20 / 100);
      Writeln('Швидкість - ', v0:5:2);
    end;
end.