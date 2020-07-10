const CSize = 10;
type TArray = array [1..CSize] of word;
Var arr,ArrLeft, ArrRight: TArray;

procedure ShowArray(const msg:string; const arg: TArray);
var i:integer;
begin
  Writeln(msg);
  for i:=1 to CSize do Write(arg[i]:4);
  Writeln;
end;

procedure Left(var arg: TArray);
var i,temp:integer;
begin
  temp:=arg[1];
  for i:=1 to CSize-1 do arg[i] := arg[i + 1];
  arg[CSize] := temp;
end;

procedure Right(var arg:TArray);
var i,temp:integer;
begin
  temp:=arg[CSize];
  for i:= CSize downto 2 do arg[i]:= arg[i -1];
  arg[1]:=temp;
end;

var i:integer;
begin
  Randomize;
  for i:=1 to CSize do Arr[i]:=i;
  showArray('Исходный массив: ', Arr);
  ArrLeft:=arr; Left(ArrLeft);
  ShowArray('Сдвинутый по кругу влево: ', ArrLeft);
  ArrRight:=Arr; Right(ArrRight);
  ShowArray('Сдвинутый по кругу вправо: ', ArrRight);
end.