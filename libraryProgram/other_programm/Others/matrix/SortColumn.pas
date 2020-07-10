Program mat;
const CMin = 1;
      CMax = 5;
type matrix = array[CMin..CMax, CMin..Cmax] of integer;
     mas = array[CMin..CMax] of integer;
var a:matrix;

procedure Full(var arg:matrix);
Var i,j:integer;
begin
  for i:=CMin to CMax do
    begin
      for j:=CMin to CMax do
        begin
          arg[i,j]:=Random(99) + 1;
        end;
    end;
end;

procedure Print(var arg:matrix);
Var i,j:integer;
begin
  for i:=CMin to CMax do
    begin
      for j:=CMin to CMax do
        begin
          Write(arg[i,j]:4);
        end;
        Writeln;
    end;
end;

Function SummaColumn(var arg:matrix): integer;
Var i,summa:integer;
begin
  for i:=CMin to CMax do
    begin
      summa:=summa + arg[i,4];
    end;
   result:=summa;
end;

procedure SortColumn(var arg:matrix);
Var 
    i,j,t:integer;
    b:mas;
begin
  for i:=CMin to CMax do
    begin
      b[i]:=arg[i,4];
    end;
    
  for i:=CMin to CMax - 1 do
    begin
      for j:=CMin to CMax - i do
        begin
          if b[j] > b [j + 1] then
            begin
              t:=b[j];
              b[j]:=b[j+1];
              b[j+1]:=t;
            end;
        end;
    end;
    
    for i:=CMin to CMax do
    begin
      arg[i,4]:=b[i];
    end;
    
end;

begin
  Full(a);
  Print(a);
  Writeln('Сума четвертого стопчика: ', SummaColumn(a));
  Writeln('Відсортірований 4 стовпчик: ');
  SortColumn(a);
  Print(a);
end.