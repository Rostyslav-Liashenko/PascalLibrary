const Csize = 4;
type TTeam = record
                mAces:integer;
                mName:string;
             end;
     TChamp = array [1..CSize] of TTeam;
Var
  Champ:TChamp;
 
procedure BubbleSort(var arg:TChamp);
var i,j:integer;
    t:TTeam;
begin
  for i:=1 to Csize - 1 do
    begin
      for j:=1 to CSize - i do
        begin
          if arg[j].mAces < arg[j+1].mAces then
            begin
              t:=arg[j];
              arg[j]:=arg[j+1];
              arg[j+1]:=t;
            end;
        end;
    end;
end;

var i:integer;
begin
  for i:=1 to CSize do
    begin
      Write('Введите названия команды: ');
      Readln(Champ[i].mName);
      Write('Введите количество очков: ');
      Readln(Champ[i].mAces);
    end;
    BubbleSort(Champ);
    Writeln('Итоги чемпионата: ');
    Writeln('Место     Команда    Очки');
    for i:=1 to CSize do
    begin
      Writeln(i:3,' ':3, Champ[i].mName,champ[i].mAces:(20 - Length(Champ[i].mName)));
    end;
end.