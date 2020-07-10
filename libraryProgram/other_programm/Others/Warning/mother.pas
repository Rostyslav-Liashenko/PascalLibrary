Program mother;
Var sum,count,num:integer;
    bal:Real;
begin
  count:=0;
  Writeln('Введiть 0, щоб завершить пiдрахунок');
  repeat
    Write('Введiть оцiнку: ');
    Readln(num);
    sum:=sum+num;
    count:=count + 1;
  until num = 0;
    bal:=sum / (count - 1);
    Writeln('Середнє арифметичне: ', bal:6:3);
end.