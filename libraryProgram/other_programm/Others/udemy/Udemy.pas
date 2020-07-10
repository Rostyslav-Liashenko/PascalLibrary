program Udemy;
Uses Crt;

procedure recordChildren(name:string; score:integer);
var f:text;
begin
  Assign(f, '4.txt');
  Rewrite(f);
  Writeln(f, name, ' ', score);
  Close(f);
end;

procedure showChildren();
Var f:text;
s:string;
begin
  Assign(f, '4.txt');
  Reset(f);
  while not EOf(f) do 
    begin
      Readln(f,s);
      Writeln(s);
    end;
  Close(f);
end;
// ГЛОБАЛЬНЫЕ ПЕРЕМЕННЫЕ
Var people,score:integer;
name:string;
// перевод укр і в анг i, для коректного отображения
function checkI(str:string):string;
Var k:integer;
begin
  for k:=1 to Length(str) do
    begin
      if str[k] = 'і' then
        begin
          str[k] := 'i';
        end;
    end;
end;

// комплекс программы, для учителя
procedure teacher();
Var que,ans,variant:text;
i,pak:integer;
userInp:string;
begin
  Assign(que,'1.txt');
  append(que);
  Assign(ans,'3.txt');
  append(ans);
  Assign(variant,'2.txt');
  append(variant);
  Writeln('Сколько будет паков?');
  Readln(pak);
  for i:= 1 to pak do
    begin
      Writeln('Введите вопрос (в одну строку)');
      Readln(userInp);
      checkI(userInp);
      Writeln(que, userInp);
      Writeln('Введите варианты (в одну строку)');
      Readln(userInp);
      checkI(userInp);
      Writeln(variant,userInp);
      Writeln('Введите номер правильного ответа(в одну строку)');
      Readln(userInp);
      checkI(userInp);
      Writeln(ans,userInp);
    end;
    Close(que);
    Close(ans);
    Close(variant);
end;

// добавления счётчика для правильных ответов
  procedure plusScore();
  begin
    inc(score);
  end;

// вариант не правильного ответа
  procedure lose();
  begin
    Writeln('Не правильно');
  end;
  
// комплекс программ и функции, для ученика

// сердце подпрограммы ученика  
  procedure children();
  var s,ans:string;
  question,answerQuestion,variant:text;
  begin
    Assign(question,'1.txt');
    reset(question);
    Assign(answerQuestion, '3.txt');
    reset(answerQuestion);
    Assign(variant, '2.txt');
    reset(variant);
    while not EOF(question) do
      begin
        Readln(question,s); // читаем вопрос
        Writeln(s);
        Readln(variant,s);//читаем варинаты ответа
        Writeln(s);
        Readln(answerQuestion, s);//читаем правильный ответ
        Writeln('Введiть правильну вiдповiдь:');
        Readln(ans);
        if ans = s then //сравниваем ответы
          begin
            plusScore();
          end
        else
          begin
            lose();
          end;
      end;
      Writeln('Правильних вiдповiдей: ', score);
      Close(question);
      Close(variant);
      Close(answerQuestion);
  end;

begin
  Writeln('=================================================');
  Writeln('                   Завантаження');
  Writeln('=================================================');
  Writeln('                  Початок роботи');
  Writeln('Якщо ви вчитель, то натиснiть 1, а якщо учень, то 2, побачити результати учнiв 3');
  Readln(people);
  if people = 1 then
    begin
      teacher();
    end;
  if people = 2 then
    begin
      Writeln('Введіть своє iмя');
      Readln(name);
      children();
      Writeln('Тест завершен, ви набрали ', score, ' балa');
    end;
   if people = 3 then
    begin
      showChildren();
    end;
  recordChildren(name, score);
  ReadKey;
end.