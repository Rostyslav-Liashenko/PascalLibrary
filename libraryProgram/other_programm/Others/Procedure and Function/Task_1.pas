Program Task_1;
Uses Crt;
Var ch,zn:integer;
punkt:char;

Procedure Browse(a,b:integer);
begin
  Writeln(a,'/',b);
end;

Procedure rev(var a,b:integer);
Var t:integer;
begin
  Writeln('====Реверс====');
  t:=a;
  a:=b;
  b:=t;
  Writeln('Дріб обернений');
  {Browse(a,b);}
end;

procedure sck(var a,b:integer);
Var i:integer;
begin
  Writeln('====Скоррочення====');
  i:=2;
  if (a mod b) = 0 then
    begin
      Writeln(a / b);
    end
  else
   begin
    while (i <= a) and ( i <= b) do
      begin
        if (a mod i = 0) and (b mod i = 0) then
          begin
            a:= a div i;
            b:= b div i;
          end
        else
          begin
            i:=i + 1;
          end;
      end;
      Browse(a,b);
    end;
end;

procedure INp();
begin
  Writeln('Введіть число чисельник: ');
  Readln(ch);
  Writeln('Введыть знаменник: ');
  Readln(zn);
end;

begin
  Writeln('Программа');
  Inp();
repeat
  ClrScr;
  Writeln('====Меню====');
  Writeln('1 - обернуть дріб');
  Writeln('2 - скоротить');
  Writeln('3 - вивод');
  Writeln('4 - виход');
  Readln(punkt);
  Case punkt of 
    '1': begin ClrScr; rev(ch,zn); Readln(); end;
    '2': begin ClrScr; sck(ch,zn); Readln(); end;
    '3': begin ClrScr; Browse(ch,zn); Readln();end;
   
   else
    Writeln('Не вірна команда!!!');
 end;
until false; 
end.