program children;
const CSize = 4;
type TChildren = record
                mLastName:string;
                mHeight:integer;
                mWeight:integer;
                               
                end;
      ArrChildren = array[1..CSize] of TChildren;
Var
  students:ArrChildren;
  point:char;
 
procedure SortWeight(var arg:ArrChildren);
Var i,J:integer;
    t:Tchildren;
begin
  for i:=1 to CSize-1 do
    begin
      for j:=1 to CSize-1 do
        begin
          if arg[j].mWeight > arg[j + 1].mWeight then
            begin
              t:=arg[j];
              arg[j]:=arg[j + 1];
              arg[j + 1]:= t;
            end;
        end;
    end;
end;

procedure SortHeight(var arg:ArrChildren);
Var i,J:integer;
    t:Tchildren;
begin
  for i:=1 to CSize-1 do
    begin
      for j:=1 to CSize-1 do
        begin
          if arg[j].mHeight > arg[j + 1].mHeight then
            begin
              t:=arg[j];
              arg[j]:=arg[j + 1];
              arg[j + 1]:= t;
            end;
        end;
    end;
end;

procedure SortLastName(var arg:ArrChildren);
Var i,J:integer;
    t:Tchildren;
    stroka:string;
    ch1,ch2:char;
begin
  for i:=1 to CSize-1 do
    begin
      for j:=1 to CSize-1 do
        begin
          {перенос в строку}
          stroka := arg[j].mLastName;
          ch1:=stroka[1];
          stroka := arg[j + 1].mLastName;
          ch2:=stroka[1];
          if ch1 > ch2 then
            begin
              t:=arg[j];
              arg[j]:=arg[j + 1];
              arg[j + 1]:= t;
            end;
        end;
    end;
end;

procedure full(var arg:ArrChildren);
Var i:integer;
begin
  for i:=1 to CSize do
    begin
      Write('Введите Фамилия ученика: ');
      Readln(arg[i].mLastName);
      Write('Введите рост ученика: ');
      Readln(arg[i].mHeight);
      Write('Введите весс ученика: ');
      Readln(arg[i].mWeight);
    end;
end;

procedure Print(var arg:ArrChildren);
Var i:integer;
begin
  for i:=1 to CSize do
    begin
      Write(arg[i].mLastName:3);
      Write(arg[i].mWeight:4);
      Writeln(arg[i].mHeight:4);
    end;
end;

begin
  full(students);
  repeat
    Writeln('Выбирете как отсортировать===');
    Writeln('1 - Рост');
    Writeln('2 - Вес');
    Writeln('3 - Фамилия');
    Write('Введите номер команды:');
    Readln(point);
    case point of 
        '1':SortHeight(students);
        '2':SortWeight(students);
        '3':SortLastName(students);
      
        else
          writeln('Не верная команда');
    end;
  Print(students);
  until false;
end.