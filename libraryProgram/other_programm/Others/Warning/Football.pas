Program Footbal;
Const CSize = 4;
Type TScoore = array[1..CSize] of integer;
     TNames = array[1..Csize] of string;
Var
  Scoore:TScoore;
  Names:TNames;
  i:integer;
  
procedure BubbleSort(var arg1:TScoore; var arg2:TNames);
Var i,j,t:integer;
    s:string;
begin
  for i:=1 to CSize-1 do
    begin
      for j:=1 to CSize-i do
        begin
          if arg1[j] < arg1[j+1] then
            begin
              t:=arg1[j];
              arg1[j]:=arg1[j + 1];
              arg1[j+1]:=t;
              
              s:=arg2[j];
              arg2[j]:=arg2[j+1];
              arg2[j+1]:=s;
            end;
        end;
    end;
end;

begin
  Writeln('====Чемпионат=====');
  for i:=1 to CSize do
    begin
      Write('Введите названия команды: ');
      Readln(Names[i]);
      Write('Введите количество очков: ');
      Readln(Scoore[i]);
    end;
  BubbleSort(Scoore,Names);
  Writeln('Место   Команда      Очки');
  for i:=1 to CSize do
    begin
      Writeln(i:3,' ':3,Names[i], Scoore[i]:20-Length(Names[i]));
    end;
end.