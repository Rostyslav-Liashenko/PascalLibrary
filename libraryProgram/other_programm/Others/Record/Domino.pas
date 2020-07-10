Program Domino;
const CSize = 28;
type Tbown = Record
            one:integer;
             two:integer;
             end;
TmanyBows = array[1..CSize] of Tbown;
Var
  manyBows:TmanyBows;

procedure Full(var arg:TManyBows);
Var i:integer;
begin
  for i:=1 to CSize do
    begin
      arg[i].one:=Random(7);
      arg[i].two:=Random(7);
    end;
end;
  
procedure print(var arg:TManyBows);
Var i:integer;
begin
 Write('Номер':5);
 Write('Первое число':17);
 Writeln('Второе число':23);
 for i:=1 to CSize do
  begin
    Write(i:5);
    Write(arg[i].one:17);
    Writeln(arg[i].two:23);
  end;
end;

begin
  Full(manyBows);
  print(manyBows);
  Writeln('Перетасовка');
  print(manyBows);
end.