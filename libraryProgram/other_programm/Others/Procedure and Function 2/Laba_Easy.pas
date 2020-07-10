Program dc;
Uses Crt;
Var z,n,i,x,y,nsk,p,p1,dr:integer;
  punkt:char;

{function}
Function Prime(n:integer):boolean;
var count,i:integer;
begin
    i:=2;
    count:=0;
    while i * i <= N do
      begin
        if N mod i = 0 then count:=count + 1;
        i:= i + 1;
      end;
      Prime:= (count = 0);
end;

Function lg(a:real):real;
begin
  lg:= ln(a) / ln(10);
end;

Function Fact(z:word):word;
Var dob,i:word;
  begin
    Dob:=1;
    for i:= 1 to z do
      dob:=dob * i;
    Fact:=dob;
  end;

Function FactR(z:word):word;
begin
  if z = 1 then factR:=1
  else FactR:=z * FactR(z - 1);
end;

Function NSD(a,b:integer):integer;
begin
  while a<>b do
    if a > b then a:=a - b
    else b:=b - a;
    NSD:=b;
   p1:=b;
end;

{Main program}
begin
repeat
  ClrScr;
  Writeln('==Menu==');
  Writeln('1 - прайм');
  Writeln('2 - логарифми');
  Writeln('3 - факторiал (iтеративний)');
  Writeln('4 - НСК');
  Writeln('5 - факторiал (рекурсiя)');
  Writeln('6 - НСк iз довiлих чисел');
  Writeln('Введiть команду: ');
  Readln(punkt);
  Case punkt of 
    '1': begin
          ClrScr;
          Writeln('Введите цiле число: ');
          Readln(z);
          if Prime(Z) then
              Writeln(Z, ' - простий')
          else
            Writeln(z, ' - складний');
          Readln();
        end;
    '2':begin
          ClrScr;
          WRite('Введите n:');
          Readln(n);
          for i:=1 to n do
            Writeln(i:4,' - ', lg(i):3:3);
          Readln();
        end;
     '3':begin
          ClrScr;
          Write('Введiть n!:');
          Readln(n);
          Writeln('Обчислений факторiл - ', Fact(n));
          Readln();
        end;
     '4':begin
          ClrScr;
          Write('Введи х, y: ');
          Readln(x,y);
          Nsk:= x * y div NSd(x,y);
          Writeln('NSK = ', Nsk);
          Readln();
        end;
      '5':begin
          ClrScr;
          Write('Введіть n!:');
          Readln(n);
          Writeln('Обчислений факторіл - ', FactR(n));
          Readln();
        end;
      '6':begin
          Write('Введите 2 числа: ');
          Readln(x,y);
          Nsd(x,y);
          p:=x * y;
          while (true) do
            begin
              Writeln('Введите число: ');
              Readln(z);
              if z = 0 then break;
              Nsd(p1,z);
              p:=p * z;
            end;
           dr:= p div p1;
           Writeln('NSk = ', dr);
           Readln();
          end;
      else
        begin
          exit;
        end;
   end;
 until false;
end.