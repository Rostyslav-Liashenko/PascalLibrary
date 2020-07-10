program RandomAnswer;
Uses Crt;

procedure randomAnswer();
Var f:text;
s:string;
i,r:integer;
begin
  Randomize;
  r:=Random(5) + 1;
  Assign(f,'C:\text\answer.txt');  
  reset(f);
  for i:= 1 to r do
    begin
      Readln(f,s);
    end;
  Writeln(s);
end;

// main program 
var
  S: string;
begin
  repeat
    Write('Ваш вопрос: '); 
    Readln(S);
    if S = '' then 
      begin
        break; { завершение цикла, если строка пуста }
      end;
     randomAnswer();
  until false; { бесконечный цикл }
end. 