Program kolo;
Uses Crt;
Var x1,y1,R1,x2,y2,R2:integer;
    punkt:char;
    
procedure CreativeCicle(var x,y,r:integer);
begin
  Writeln('Введи x,y,r:');
  Readln(x,y,r);
end;

procedure OutCicle(var x,y,r:integer);
begin
  Writeln('центр (', x,':',y,') R = ', R);
end;

function Kilce:boolean;
begin
  if (x1 = x2) and (y2 = y1) then
    result:=true;
end;

procedure KilSpil;
  Var l:real;
begin
  l:=sqrt(sqr(x2-x1) + sqr(y2-y1));
  if (x1 = x2) and (y2 = y1) and (r1 = r2) then
    begin
      Writeln('Накладаються повністю');
    end
  else
    begin
      if l = R1 + R2 then
        begin
          Writeln('1 спільна точка');
        end
      else
        begin
          if l = R1 + R2 then
          begin
            Writeln('1 спільна точка');
          end
          else
            begin
              if (l < R1 + R2) and (not Kilce) then
                begin
                  Writeln('2 спільні точки');
                end
              else
                begin
                   if kilce then
                      begin
                        writeln('коло лежить в середині другого кола');
                      end
                  else
                    begin
                      Writeln('Немає точок');
                    end;
                end;
            end;
        end;
    end;
end;


begin
repeat
  ClrScr;
  Writeln('Меню====');
  Writeln(' 1 - ввести данні кола');
  Writeln(' 2 - вивод даних кола');
  Writeln(' 3 - кількість спільних точок');
  Writeln(' 4 - чи є коло кільцем');
  Readln(punkt);
  case punkt of 
    '1':begin
          ClrScr;
          Writeln('1 коло ');
          CreativeCicle(x1,y1,R1);
          Writeln('2 коло');
          CreativeCicle(x2,y2,R2);
          Readln();
        end;
    '2':begin
          ClrScr;
          OutCicle(x1,y1,r1);
          OutCicle(x2,y2,r2);
          Readln();
        end;
   '3':begin
          ClrScr;
          kilSpil;
          Readln();
       end;
   '4':begin
          ClrScr;
        if Kilce then
            Writeln('Утворює кільце')
        else
            Writeln('Не утворює кільце');
        Readln();
       end;
     else 
      begin
        ClrScr;
        Writeln('Не вірна команда');
         Readln();
      end;
    end;
until false;
end.