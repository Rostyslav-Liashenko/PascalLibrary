Program NAswer;
Const 
  CAnswer = 100;
Type TArray = array [1..CAnswer] of string;
Var 
  source:TArray;
  F:text;
  Fact:integer;
  s:string;
 
 procedure FullMas( var aFile:text);
 Var i:integer;
 begin
  Reset(aFile); 
  Fact:=0;
  for i:=1 to CAnswer do
    begin
      if EOF(aFile) then
        begin
          break;
        end;
      Readln(aFile, source[i]);
      Fact:=Fact + 1;
    end;
 end;
 
begin
  Assign(f, 'C:\Users\Patron\Desktop\Algotithm\text\1.txt');
  FullMas(f);
  Close(f);
  Randomize;
  Repeat
    Writeln('Введите ваш вопрос: ');
    Readln(s);
    if s <> '' then
        Writeln(source[Random(Fact) + 1]);
  
  until s = '';
end.