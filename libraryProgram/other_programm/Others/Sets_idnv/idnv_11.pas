Program idnv_12;
type Tset = set of 1..100;
Var i:integer;
    SetFive,SetThree,SetSum,SetTen:Tset;
begin
  for i:=1 to 100 do
    begin
      if i mod 5 = 0 then
        begin
          SetFive:=SetFive + [i];
        end
      else
        begin
          if i mod 3 = 0 then
            SetThree:=SetThree + [i];
        end;
    end;
    SetSum:=SetFive + SetThree;
    for i:=1 to 100 do
      begin
        if (i mod 10 = 0) and (i in SetSum) then
          begin
            setTen:=setTen + [i];
          end;
      end;
   Writeln('Множина чисел, що діляться на 5: ',SetFive);
   Writeln('Множина чисел, що діляться на 3: ',SetThree);
   Writeln('Множина чисел, що діляться на 10, з множиною 5 i 3: ',SetTen);
end.