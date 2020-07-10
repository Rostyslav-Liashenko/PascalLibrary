Program Sea_fight_V_1;
Uses Crt;
type area = array[1..10,1..10] of char;
var areaPlayer1,areaPlayer2:area;
    endG:boolean;
    
//Начало секций для процедур, которые связаные з полем боя игроков 
procedure generateArea(var a:area);
Var i,j:integer;
begin
  for i:=1 to 10 do
    for j:=1 to 10 do
      a[i,j]:='m';
end;

procedure ShowArea(var a:area);
Var i,j:integer;
begin
  for i:=1 to 10 do
    begin
      for j:=1 to 10 do
        begin
          Write(a[i,j]:3);
        end;
      Writeln;
    end;
end;

procedure ShowOnlyMiss(a : area);
Var i,j:integer;
begin
  for i:=1 to 10 do
    begin
      for j:=1 to 10 do
        begin
          if (a[i,j] <> 'p') or (a[i,j] <> 'b')then
            Write('m':3)
          else
            Write(a[i,j]:3);
        end;
       Writeln;
    end;
end;

function EndGame(a: area):boolean; // подсчёт живых кораблей, если нет, то выход из игры.
Var i,j:integer;
    ship:integer;
begin
  ship:=0;
  for i:=1 to 10 do
    begin
      for j:=1 to 10 do
        begin
          if (a[i,j] = '1') or (a[i,j] = '2') then
            begin
              Inc(ship);
            end;
        end;
    end;
  if ship <> 0 then
    result:=false
  else
    result:=true;
end;

// конец секций для процедур, которые связаные з полем боя игроков

// начало секция для проверки возможных ошибок игроков

function checkInp(a:area; i,j:integer; s:char):boolean;
Const ar = [1..10];
begin
  if (i in ar) and (j in ar) then
   begin
    if (a[i,j] <> '1') and (a[i,j] <> '2') then
      begin
        result:=true;
      end
   else
    begin
      result:=false; 
    end;
   end
  else
    begin
      result:=false;
    end;
end;

function checkInpForFight(i,j:integer):boolean;
Const ar = [1..10];
begin
  if (i in ar) and (j in ar) then
   begin
       result:=true;
   end
   else
    begin
      result:=false; 
    end;
end;

function checkMove(z: area; i,j,move,palub:integer; s:char):boolean;
begin
  if move = 1 then
    begin
      for var k:=1 to palub do
        begin
          if CheckInp(z,i,j,s) then 
            begin
              result:=true;
            end
          else
            begin
              result:=false;
              exit;
            end;
           inc(i);
        end;
    end
   else
    begin
      if move = 2 then
        begin
          for var k:=1 to palub do
            begin
              Inc(j);
              if CheckInp(z,i,j,s) then
                begin
                  result:=true;
                end
              else
                begin
                  result:=false;
                  exit;
                end;
            end;
        end;  
    end;
end;
// конец секции поцедур для проверки возможных ошибок игроков

// начало секции процедур для генерации кораблей на поле

procedure genPal(var z:area; s:char; i,j,k:integer; move:integer);
begin
   if move = 1 then
    begin
      for var r:=1 to k do
        begin
          z[i,j]:=s;
          INc(i);
        end;
    end
   else
    begin
      for var r:=1 to k do
        begin
          z[i,j]:=s;
          Inc(j);
        end;
    end;
end;

procedure generateShip(var z:area; player:integer);
Label rep;
var i,j,k,move:integer;
    s:char;
begin
  if player = 1 then
    s:='1'
  else
    begin
      if player = 2 then
        s:='2'
      else
        Writeln('ошибка имени');
    end;
      
  k:=4;
  
 while (true) do
begin
  rep:
  Writeln('Ростановка ',k ,' палубных для игрока', player);
  Writeln('Введіть початкові координати');
  Readln(i,j);
  Writeln('Напрям корабля 1 - вертикально вниз, 2 - горизонтально вправо');
  Readln(move);
  if checkInp(z,i,j,s) and CheckMove(z,i,j,move,k,s) then
    begin
      genPal(z,s,i,j,k,move);
    end
  else
    begin
      Writeln('Ошибка ростоновки!!!');
      GOTO rep;
    end;
 Dec(k);
 ShowArea(z);
 if k = 0 then
  break;
end;
end;

procedure UpdateAreaPlayer(y:Area; key:integer);
Var i,j:integer;
begin
      for i:=1 to 10 do
        begin
          for j:=1 to 10 do
            begin
              if key = 1 then
                areaPlayer1[i,j] := y[i,j];
              if key = 2 then
                areaPlayer2[i,j] := y[i,j];
            end;
        end;
end;
// конец секции процедур для генерации кораблей на поле
// начало секции процедур, для боя
procedure fight(player:integer); // движок схватки игроков
Var s:char;
    i,j:integer;
    z:area;
begin
  if player = 1 then // определения какой игрок ходит
    begin
      s:='1';
      z:=AreaPlayer2;
    end
  else
    begin
      if player = 2 then
        begin
          s:='2';
          z:=AreaPlayer1;
        end
      else
        begin
          Writeln('ошибка имен');
          exit;
        end;
    end;
  Writeln('Введите координати: ');
  Readln(i,j);
  if checkInpForFight(i,j) then
    begin
      if s = '1' then
        begin
          if z[i,j] <> '2' then
            begin
              writeln('miss');
              z[i,j] := 'p';
              UpdateAreaPlayer(z,2);
            end
         else
          begin
            writeln('hit');
            z[i,j] := 'b';
            UpdateAreaPlayer(z,2);
          end;
        end
      else
        begin
          if s = '2' then
            begin
              if z[i,j] <> '1' then
                begin
                  writeln('miss');
                  z[i,j] := 'p'; // промазав
                  UpdateAreaPlayer(z,1);
                end;
             if z[i,j] = '1' then
              begin
                writeln('hit');
                z[i,j] := 'b'; // попав
                UpdateAreaPlayer(z,1);
              end;
            end;
        end;
    end
   else
    begin
      Writeln('Ошибка поля');
    end;
end;
// конец секции процедур для боя.

//Управляющая часть и сам процес игры

procedure beggame; // процедура для начала игры, нужна для ростановки кораблей
begin
  generateArea(areaPlayer1);
  generateArea(areaPlayer2); // згенерировать 2 поля для 2 игроков
  writeln('Ростановка кораблей для первого игорока');
  ShowArea(areaPlayer1);
  generateShip(areaPlayer1,1);
  Writeln('Ростановка завершена, отойодите от экрана, второй игрок нажмите любую кдавишу');
  Readln;
  clrScr;
  Writeln('Ростановка короблей для второго игрока');
  showArea(areaPlayer2);
  generateShip(areaPlayer2,2);
  Writeln('Ростоновка завершина, переход до бою, нажите любую клавишу');
  ClrScr;
  Writeln('1-player');
  ShowArea(areaPlayer1);
  Writeln('2 - player');
  ShowArea(areaPlayer2);
end;

procedure middlegame; // средная часть игры, схватка игроков
begin
  while (true) do
    begin
      endG:=endGame(AreaPlayer2);
      if EndG then
        exit;
      writeln('Ходит первый игрок');
      Writeln('Твоё поле: ');
      showArea(AreaPlayer1);
      Writeln('Вражеское поле: ');
      ShowOnlyMiss(AreaPlayer2);
      Writeln('Нажмите для атаки любую клавишу..');
      Readln;
      fight(1);
      Writeln('Текущий игрок закройте глаза, и нажмите любую клавишу...');
      Readln;
      clrscr;
      endG:=endGame(AreaPlayer1);
      if EndG then
        exit;
      Writeln('Ходит второй игрок');
      Writeln('Твоё поле: ');
      showArea(AreaPlayer2);
      Writeln('Вражеское поле: ');
      ShowOnlyMiss(AreaPlayer1);
      Writeln('Нажмите для атаки любую клавишу..');
      Readln;
      fight(2);
      Writeln('Текущий игрок закройте глаза, и нажмите любую клавишу...');
      readln();
      clrscr;
    end;
end;


begin
  beggame;
  middlegame;
end.
{Note -----
Дороботать бой, что бы когда игрок попал ход не переключался
Баг, з однаковими точками початку респавн
Процедура выхода с боя (нужна проверка)
Нормальное количчество кораблей
}
