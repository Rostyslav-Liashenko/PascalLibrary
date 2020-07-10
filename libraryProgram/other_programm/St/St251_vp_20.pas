Program zz;
type numbers = array[1..100] of integer;
Const digit = ['0'..'9'];
Var 
  s:string;
 dec,m,num,err,l,r,i,sum:integer;
 dgNum:numbers;
begin
  Writeln('Введіть строку: ');
  Readln(s);
  m:=Length(s);
  dec:=1;
  r:=1;
  while m <> 0 do
   begin
    if s[m] in digit then
      begin
        Val(s[m],num,err);
        num:=num * dec;
        dgNum[r]:=dgNum[r] + num;
        dec:=dec*10;
        if m = 1 then break;
        if (not (s[m - 1] in digit)) then
          begin
            dec:=1;
            r:=r+1;
          end;
      end;
    m:=m-1;
   end;
  sum:=0;
  for i:=1 to r do
    sum:=sum+dgNum[i];
  Writeln('Сума = ',sum);
end.