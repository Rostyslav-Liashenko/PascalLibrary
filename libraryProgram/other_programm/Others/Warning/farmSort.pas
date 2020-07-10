const 
    CSize = 10;
type TNumbers = array [1..CSize] of integer;
var 
    Arr: TNumbers;

procedure FarmSort(var arg: TNumbers);
var L,R,T:integer;
begin
  for L:=1 to CSize-1 do
      for R:=Csize downto L+1 do
        begin
          if arg[L] > arg[R] then
            begin
              t:=Arg[L];
              arg[L]:=arg[R];
              arg[R]:=T;
             end;
         end;
  end;
  
  procedure ShowArray(const arg:string);
  var i:integer;
  begin
    Writeln(arg);
    for i:=1 to Csize do
      Writeln(arr[i]);
   end;
   
   var i:integer;
   begin
    for i:=1 to CSize do Arr[i]:=1+Random(100);
    ShowArray('До сортировки');
    FarmSort(Arr);
    ShowArray('После сортировки:');
   end.