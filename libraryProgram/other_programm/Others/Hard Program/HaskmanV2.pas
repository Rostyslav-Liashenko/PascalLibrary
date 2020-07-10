Program Hashman;
Uses Crt;
Var 
  playerName1,playerName2:string;
  userWord1,userWord2:string;
  playerScoore1,playerScoore2,maxScoore1,maxScoore2:integer;
  endGame:boolean;
  
procedure GetNames();
begin
  Write('1-игрок введите имя: ');
  Readln(playerName1);
  Write('2-игрок введите имя: ');
  Readln(playerName2);
  ClrScr;
  endGame:= false;
end;

procedure GetWords();
begin
  Write(playerName1, ' введите своё слово: ');
  Readln(userWord1);
  maxScoore1:= Length(userWord1);
  ClrScr;
  Write(playerName2, ' введите своё слово: ');
  maxScoore2:= Length(userWord2);
  Readln(userWord2);
  ClrScr;
end;

procedure Compare();
begin
  if playerScoore1 = maxScoore2 then
    begin
      ClrScr;
      Writeln(playerName1, ' выиграл!!!');
      endGame := true;
    end
  else
    begin
       if playerScoore2 = maxScoore1 then
        begin
          ClrScr;
          Writeln(playerName2, ' выиграл!!!');
          endGame := true;
        end;
    end;
end;

procedure move( var name,userWord: string);
Label
  m1;
Var letter:char;
  i:byte;
  notFindLetter:boolean;
begin
  m1:   {Здесь метка, аккуратно}
  Writeln(name,' ваш ход');
  Write('Введите букву из слова второго игрока: ');
  Readln(letter);
  notFindLetter := true;
  for i:=1 to Length(userWord) do
    begin
      if letter = userWord[i] then
        begin
          Writeln('Вы угадали букву!!!');
          Writeln('Эта буква - ', userWord[i]);
          notFindLetter := false;
          if name = playerName1 then
            begin
                playerScoore1 := playerScoore1 + 1;
                Compare();
            end;
          if name = PlayerName2 then
            begin
              playerScoore2 := playerScoore2 + 1;
              Compare();
            end;
            if  not endGame then
              begin
                GOTO m1;
              end;
           {Переход по метке =)}
        end;
    end;
   if notFindLetter then
    begin
      Writeln('К сожелению вы не угадали');
    end;
end;

begin
  GetNames();
  GetWords();
  while (true) do
    begin
      move(playerName1, userWord2);
      move(playerName2, userWord1);
      if endGame then
        begin
          break;
        end;
    end;
    Writeln('End Game !!!');
end.