program indv_8;
type Tset = set of 1..255;
Var 
  i,num:integer;
  mnoj:Tset;
function isPrime(n:integer):boolean;
Var i,count:integer;
begin
result:=false;
for i:=2 to n do
  begin
    if (n mod i = 0) then
      begin
        count:=count + 1;
      end;
  end;
  if count = 1 then
    result :=true;
end;

begin
  mnoj:=[];
  Writeln('Множина простих чисел: ');
  for i:=1 to 255 do
    begin
      if isPrime(i) then
        begin
          mnoj:=mnoj + [i];        
        end;
    end;
   Writeln(mnoj);
   Write('Введіть число: ');
   Readln(num);
   if num in mnoj then
      Writeln('Входить в множину простих чисел')
   else
      Writeln('Не входить в множину простих чисел');
end.