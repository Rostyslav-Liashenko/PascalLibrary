program games;
Var aiNumber1, aiNumber2, score:integer;

procedure gameProcess();
Var userNUmber,again:integer;
begin
 while true do
  begin
    if again = 14 then
      begin
        break;
      end;
    Randomize;
    aiNumber1:= Random(38) + 2;
    aiNumber2:= Random(38) + 2;
    Writeln('Сколько будет?');
    Writeln(aiNumber1, ' + ', aiNumber2, ' ?');
    Readln(userNumber);
    if userNumber = (aiNumber1 + aiNumber2) then
      begin
        Writeln('Молодець');
        score:= score + 1;
        again:=again + 1;
      end
    else
      begin
        Writeln('Не правильно');
        again:=again + 1;
      end;
  end;
end;

procedure finish(score:integer);
begin
  if score = 10 then
    begin
      Writeln('Ты великолепен');
    end;
  if score > 5 then
    begin
      Writeln('Ну нормально');
    end;
  If score < 5 then
    begin
      Writeln('Иди учи математику');
    end;
  Writeln('Игра окончена');
end;
// main programm
begin
  Writeln('Вход в игру ');
  gameProcess();
  finish(score);
end.