program games;
Var aiNumber1, aiNumber2, score, min, max, trueAnswerAi:integer;
// процедура, для генеации числа
procedure AI(min: integer; max:integer);
begin
  Randomize;
    aiNumber1:= Random(max) + min;
    aiNumber2:= Random(max) + min;
end;
//процедура, для расчёта операции над числом, + или - или *
function operation():string;
var oper:integer;
begin
  Randomize;
  oper:=Random(3);
  case oper of
    0:begin
        trueAnswerAi:= aiNumber1 + aiNumber2;
        operation:=' + ';
      end;
    1:begin
        trueAnswerAi:= aiNumber1 - aiNumber2;
        operation:=' - ';
      end;
    2:begin
        trueAnswerAi:= aiNumber1 * aiNumber2;
        operation:=' * ';
      end;
  end;
end;  
// процедура, для выбора сложности
procedure level();
Var lv:integer;
begin
  Writeln('Виберете уровень сложности:');
  Writeln('1 - легкий ');
  Writeln('2 - средний');
  Writeln('3 - тяжолой');
  Readln(lv);
  if lv = 1 then
    begin
      min:=5;
      max:=15;    
    end;
  if lv = 2 then
    begin
      min:=10;
      max:=30;
    end;
  if lv = 3 then
    begin
      min:=30;
      max:=30;
    end;
end;
// процедура, игрового процесу, вызывает все последущии функции и производить расчёт игры 
procedure gameProcess();
Var userNUmber,again:integer;
begin
 while true do
  begin
    if again = 14 then
      begin
        break;
      end;
      AI(min,max);
    Writeln('Сколько будет?');
    Writeln(aiNumber1, operation(), aiNumber2, ' ?');
    Readln(userNumber);
    if userNumber = trueAnswerAi then
      begin
        Writeln('Молодець');
        score:= score + 1;
        Writeln('Твой счёт ', score);
        again:=again + 1;
        Writeln('у тебя остальось попыток ', 14 - again);
      end
    else
      begin
        Writeln('Не правильно');
        Writeln('Твой счёт ', score);
        again:=again + 1;
         Writeln('у тебя остальось попыток ', 14 - again);
      end;
  end;
end;
// процедура, конца программы, выводит результат игрока
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
// головна программа
begin
  Writeln('Вход в игру ');
  level();
  gameProcess();
  finish(score);
end.