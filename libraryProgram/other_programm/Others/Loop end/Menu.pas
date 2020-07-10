Program zadacha;
Uses Crt;
Label rp; {4 - задача}
Var
   punkt:char;
  r,st:integer;
  {2 Task}
  k,b,c,a:integer;
  {3 Task}
  sum,max,i,x:integer;
  ch:char;
  {4 - задача}
  d:integer;
  {5 - задача}
  x1,x2,dx,y:Real;
begin
repeat
  ClrScr;
  TextColor(Green);
  Writeln('  --Меню--  ');
  TextColor(White);
  Writeln('  1 - таблиця Піфагора  ');
  TextColor(Green);
  Writeln('  2 - B = A + c  ');
  TextColor(White);
  Writeln('  3 - Числа до схочу  ');
  TextColor(Green);
  Writeln('  4 - задача про прямокутники ');
  TextColor(White);
  Writeln('  5 - проміжок  ');
  TextColor(Green);
  Writeln('  6 - вихід  ');
  TextColor(White);
  Readln(punkt);
  Case punkt of
    '1': Begin
            ClrScr;
            Writeln('--Таблиця Піфагора--');
            Writeln;
            for r:= 1 to 9 do
              begin
                for st:= 1 to 9 do
                  Write(r * st:4);
                Writeln();
              end;
            Readln();
         end;
         
     '2':begin
            ClrScr;
            k:=0;
            for a:=1 to 9 do
              for b:= 0 to 9 do
                for c:=0 to 9 do
                  if b = A + c then 
                    begin
                      Write(a * 100 + b * 10 + c: 4);
                      k:= k + 1;
                    end;
              Writeln;
             Writeln('Всього ', k, ' чисел');
             Readln();
        end;
     '3':begin
            ClrScr;
            max:= -32767;
            sum:=0;
            i:= 0;
            repeat
              i:= i + 1;
              Write('Введіть ', i, ' число: ');
              Readln(x);
              sum:= sum + x;
              if max < x then
                max:= x;
              Writeln(' Продовжити [y/n] ');
              ch := readkey;
            until ch = 'n';
            Writeln('max з ', i, ' чисел = ', max);
            Writeln('Сума = ', sum);
            Readln();
          end;
       '4':begin
            ClrScr;
            rp:
            Write('Введіть висоту 1 прямокутника: ');
            Readln(a);
            Write('Введіть ширину 2 пряиокутника: ');
            Readln(b);
            Write('Введіть висоту 2 прямокутника: ');
            Readln(c);
            Write('Введіть ширину 2 прямокутника: ');
            Readln(d);
            if (a <=0) or (b <= 0) or (c <=0) or (d <= 0) then
              begin
                Writeln('Були введені не вірні данні');
                Goto rp;
              end;
            if (a = c) or (b = d) then
              Writeln('Утворився новий прямокутник')
            else
              Writeln('Не можливо побудувати');
            Readln();
          end;
       '5':begin
            ClrScr;
            x1:= -3;
            x2:= 1;
            dx:= 0.1;
            While(x1 <= x2) do
              begin
                 y:= 4 * (x1 * x1 * x1) - 2 * (x1 * x1) + 5;
                 Writeln('x = ', x1:1:1, ' y = ', y:1:1);
                 x1:=x1+ dx;
              end;
            Readln();
          end;
        '6': exit;
  end;
 until false;
end.