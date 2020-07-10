Program test;
const CMinSize = 1;
      CMaxSize = 10;
type MyArray = array[cMinSize..CMaxSize] of integer;
Var 
    a:MyArray;
    
Procedure FullArray(var arg:MyArray);
Var i:integer;
begin
 for i:=CMinSize to CMaxSize do
  begin
    Write('Введите ',i,' елемент массива: ');
    Readln(arg[i]);
  end;
end;


function BubbleSort(var arg:MyArray):boolean;
var i,j,t:integer;
    sorted:boolean;
begin
  sorted:=True;
  for i:=1 to CMaxSize-1 do {внешний цикл}
      for j:=1 to CMaxSize-i do {внутренний цикл}
          if arg[j] > arg[j + 1] then begin
              {t:=arg[j];
              arg[j]:=arg[j + 1];
              arg[j + 1]:=t;}
              sorted:=False;
          end;
   result:=sorted;
end;
    
begin
  FullArray(a);
  if BubbleSort(a) then 
    begin
      Writeln(' Cортирований');
    end
  else
    begin
      Writeln('Не сортированый');
    end;
end.