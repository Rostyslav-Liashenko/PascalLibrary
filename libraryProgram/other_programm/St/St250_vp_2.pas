Program dz;
type mas = array[1..20] of integer;
Var a:mas;
    kil:integer;
   
procedure vvod(var a:mas; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      Write('a[',i,'] = ');
      Readln(a[i]);
    end;
end;

procedure vivod(var a:mas; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    Write(a[i]:4);
  Writeln;
end;

procedure cc(var a:mas; n,dv:integer);
Var i,count:integer;
begin
  count:=0;
  for i:=1 to n do
    begin
      if a[i] = dv then
        begin
          a[i]:=999;
          count:=count + 1;
        end;
    end;
    
    if dv <> 999 then
      begin
        Writeln(dv,' зустрічаєтсья ',count,' разів');
      end;
end;

procedure all(a:mas; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    cc(a,kil,a[i]);
end;
begin
  Write('Введіть кількість елементів масива: ');
  Readln(kil);
  Writeln('Введіть елементи масива: ');
  vvod(a,kil);
  all(a,kil);
end.