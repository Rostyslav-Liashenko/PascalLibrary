Var f:text; Num:integer;
function FindNumber(Var aFile:text; aNUmber:integer):boolean;
Var N:integer;
begin
  FindNumber:=false;
  Reset(f);
  n:=0;
  while not EOF(aFile) and (N <> aNumber)do
    begin
      Read(aFile,N);
      FindNumber:=(N=aNumber)
    end;
end;

begin
  Assign(f,'C:\Users\Patron\Desktop\Algotithm\text\police.txt');
repeat  
  Writeln('Введите номер автомобиля: ');
  Readln(Num);
  if FindNumber(f,NUm)
    then Writeln('Эта машина в розыске, хватай его')
    else Writeln('Пропустите его');
  until Num = 0;
  Close(f);
end.