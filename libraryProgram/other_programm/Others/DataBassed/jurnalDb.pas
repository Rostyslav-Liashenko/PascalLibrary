program Rostik;
Uses Crt;
Var inFile,outFile:text;
Counter:integer;

procedure handleString();
Var n:integer; //оценка
    Cnt:integer; //количество оценок
    sum:integer;
    Rating:Real;
begin
  sum:= 0;
  Cnt:= 0;
  while not EoLn(inFile) do
    begin
      Read(InFile, n);
      sum:=sum+n;
      Cnt:=Cnt + 1;
    end;
  if Cnt > 0 then
    begin
      Rating:= Sum / Cnt;
      Writeln(OutFile, Counter:3, Cnt:13, Sum:14, Rating:12:1);
    end
  else
    begin
      Writeln(OutFile, Counter:3, ' Ученик не аттестован'); 
    end;
end;

begin
  Counter:= 0;
  Assign(inFile, 'C:\text\shool\1.txt');
  Reset(inFile);
  Assign(outFile, 'C:\text\shool\2.txt');
  Rewrite(outFile);
  //шапка таблицы
  Writeln(outFile,'Номер   Количество Сумма Средний');
  Writeln(outFile,'ученика   оценок   баллов балл');
  while not EOF(inFile) do
    begin
      Counter:=Counter+1;
      handleString();
      Readln(inFile);
    end;
  Close(inFile);
  Close(outFile);
end.