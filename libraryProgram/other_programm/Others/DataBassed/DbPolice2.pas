program DataBase;
Uses Crt;

function findNumber(var aFile: text; aNumber:integer):boolean;
Var bdNumber:integer;
begin
  FindNumber:=false;
  Reset(aFile);
  while not EOF(aFile) do
    begin
      Read(aFile, bdNumber);
      if bdNumber = aNumber then
        begin
          FindNumber:=true;
          break;
        end;
    end;
 end;
//основная программа

Var numberCar:integer;
f:text;
begin
  Writeln('Вход в базу данных');
  Assign(f,'C:\text\BD\Police.txt');
  while true do
  begin
    Write('Введите номер машины:');
    Readln(numberCar);
    if numberCar = 0 then break;
    if findNumber(f,numberCar) then
      begin
        Writeln('Машина в розыске, хватай его, скорее!!!');
      end
    else
      begin
        Writeln('Пропусти его');
      end;
   end;
  Close(f);
end.