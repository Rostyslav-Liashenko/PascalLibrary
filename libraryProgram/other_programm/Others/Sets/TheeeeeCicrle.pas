program test;
type TSet = set of byte;
Var a,b,c,r,r2:Tset;
    i:integer;
begin
  r2:=[];
  a:= [1,2,3,4,5,16,88];
  b:= [1,2,16];
  c:= [1,10,2,88];
  r:=a*b*c;
  Writeln('Состоять в трех кружках = ',r);
  Write('Состоять в  двох кружках = ');
  for i:=0 to 255 do
    begin
      if  not (i in r) then
        begin
          if ((i in a) and (i in b)) or ((i in a) and (i in c)) or ((i in b) and (i in c)) then 
            begin
              write(i + ' ');
              r2:=r2 + [i];
            end;
        end;
    end;
    Writeln;
    r:=(a + b + c) - (a * b * c) - r2 ;
    Writeln('Состоять в 1 кружке = ', r);
end.