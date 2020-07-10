const CSize = 10;
type TGolds = array [1..CSize] of integer;
var Golds:TGolds;

procedure FullArray(var arg:TGolds);
Var i:integer;
begin
  for i:=1 to CSize do
    begin
      arg[i]:=Random(100) + 1;
    end;
end;

procedure PrintArray(var arg:TGolds);
Var i:integer;
begin
  for i:=1 to CSize do
    begin
      Write(arg[i]:4);
    end;
    Writeln;
end;

procedure BubbleSort(var arg:TGolds);
var i,j,t:integer;
begin
  for i:=1 to CSize-1 do {внешний цикл}
      for j:=1 to CSize-i do {внутренний цикл}
          if arg[j] > arg[j + 1] then begin
              t:=arg[j];
              arg[j]:=arg[j + 1];
              arg[j + 1]:=t;
          end;
end;

begin
  FullArray(Golds);
  PrintArray(Golds);
  BubbleSort(Golds);
  PrintArray(Golds);
end.