program game;
Uses Crt;

var userAnswer,score,CountComputer:integer;
nameTool:string;

procedure win();
begin
  Writeln('Ты выиграл');
  Inc(score);
end;

procedure lose ();
begin
  Writeln('Ты проиграл');
  Inc(CountComputer);
end;

function ai():integer;
Var ran:integer;
begin
  Randomize;
  ran:= Random(3)+ 1;
  if ran = 0 then
    begin
      result:=1; // rock
      nameTool:='камень';
    end;
  if ran = 1 then
    begin
      result:=2;  //paper
      nameTool:='бумага';
    end
  else
    begin
      result:=3; // nojniz
      nameTool:='ножницы';
    end;
end;

procedure ChoosePlayer(choose:integer);
begin
  if choose = 1 then
    begin
      Writeln('Игрок выбрал камень');
    end;
  if choose = 2 then
    begin
      Writeln('Игрок выбрал бумагу');
    end;
  if choose = 3 then
   begin
      Writeln('Игрок выбрал ножницы');
   end;
end;

begin
 while true do
 begin
    Writeln('1 - камень ');
    Writeln('2 - бумага');
    Writeln('3 - ножницы');
    Writeln('Введите 0, что бы завершить работу');
    Writeln('Введите цифру:');
    Read(userAnswer);
    if userAnswer = 0 then
      begin
        break;
      end;
    if userAnswer = ai() then
      begin
        choosePlayer(userAnswer);
        Writeln('Компютер выбрал ', nameTool);
        Writeln('Ничья');
      end;
    if (userAnswer = 1) and (ai() = 3) then
      begin
        choosePlayer(userAnswer);
        Writeln('Компютер выбрал ', nameTool);
        win();
      end;
    if (userAnswer = 1) and (ai() = 2) then
      begin
        choosePlayer(userAnswer);
        Writeln('Компютер выбрал ', nameTool);
        lose();
      end;
    if (userAnswer = 2) and (ai() = 1) then
      begin
        choosePlayer(userAnswer);
        Writeln('Компютер выбрал ', nameTool);
        win();
      end;
    if (userAnswer = 2) and (ai() = 3) then
      begin
        choosePlayer(userAnswer);
        Writeln('Компютер выбрал ', nameTool);
        lose();
      end;
    if (userAnswer = 3) and (ai() = 1) then
      begin
        choosePlayer(userAnswer);
        Writeln('Компютер выбрал ', nameTool);
        lose();
      end;
    if (userAnswer = 3) and (ai() = 2) then
      begin
        choosePlayer(userAnswer);
        Writeln('Компютер выбрал ', nameTool);
        win();
      end;
    end;
    Writeln('Вы набрали ', score, ' очков');
    Writeln('Компьютер набрал ', countComputer, ' очков');
end.