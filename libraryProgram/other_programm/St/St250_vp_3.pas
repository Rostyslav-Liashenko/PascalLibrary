Program zz;
type MyArray = array[1..20] of integer;
Var a:MyArray; kil:integer;

procedure Randzap(a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    a[i]:=Random(20);
end;

procedure Vvod( var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      Write('a[',i,'] = ');
      Readln(a[i]);
    end;
end;

procedure Vivod( var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    Write(a[i]:4);
  Writeln;
end;

procedure Ser(a:MyArray; n:integer);
Var i:integer;
    count,maxCount,number:integer;
begin
  for i:=n downto 2 do
    begin
      if a[i] = a[i-1] then
        begin
          count:=count + 1;
        end
      else
        begin
          if count >= maxcount then
            begin
             maxcount:=count;
             count:=0;
             number:=a[i];
            end;
        end;
    end;
    if count >= maxcount then
      begin
        maxcount:=count;
        count:=0;
        number:=a[i];
      end;
   Writeln('найдовша серія з числа ',number,' складає ', maxcount+1);
end;

begin
  Write('Введіть кількість елементів: ');
  Readln(kil);
  Vvod(a,kil);
  Writeln('Даний масив');
  Vivod(a,kil);
  Ser(a,kil);
end.