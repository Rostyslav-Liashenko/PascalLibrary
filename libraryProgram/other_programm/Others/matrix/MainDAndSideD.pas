program diagonal;
const CMin = 1;
      CMax = 4;
Type matrix = array[CMin..CMax,CMin..CMax] of integer;
Var
  a:matrix;


procedure PrintArray(var ar:matrix);
Var i,j:integer;
begin
  for i:=CMin to CMax do
    begin
      for j:=Cmin to Cmax do
        begin
          Write(ar[i,j]:5);
        end;
        Writeln;
    end;
end;

procedure FullArray(var ar:matrix);
Var 
  i,j:integer;
begin
  for i:=CMin to CMax do
    begin
      for j:=Cmin to Cmax do
        begin
          ar[i,j]:=Random(9)+1;
        end;
    end;
end;

procedure SummaMainD(var ar:matrix);
Var i,sum:integer;
begin
  sum:=0;
  for i:=Cmin to Cmax do
    begin
      sum:=sum + ar[i,i];
    end;
  Writeln('Сума головної діагоналі: ', sum);
end;

procedure SummaSideD(var ar:matrix);
var i,sum:integer;
begin
  sum:=0;
  for i:=CMin to Cmax do
    begin
     sum:=sum + a[i,Cmax-i + 1];
    end;  
  Writeln('Сума побочної діагоналі: ', sum);
end;

procedure uppSide
begin
  FullArray(a);
  PrintArray(a);
  SummaMainD(a);
  SummaSideD(a);
end.