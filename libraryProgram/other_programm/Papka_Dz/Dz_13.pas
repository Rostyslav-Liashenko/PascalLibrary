Program Dz_13;
Uses Crt;
Var norma1,norma2:boolean;
I:integer;

function device(str:string):boolean;
Var ch:char;
begin
  Writeln(str,' прилад показує норму? [y/n]');
  Readln(ch);
  if (ch = 'Y') or (ch = 'y') then
    begin
      result:=true;
    end
  else
    begin
      result:=false;
    end;
end;

begin
  norma1:=device('1');
  norma2:=device('2');
  if norma1 and norma2 then
    i:=100
  else
    begin
      if norma1 and not norma2 then
        begin
          i:=75;
        end
      else
        begin
          if not norma1 and norma2 then
            begin
              i:=50;
            end
          else
            begin
              i:=25;
            end;
        end;
    end;
Writeln('Стан забезпечення станції - ', i,'%');
end.