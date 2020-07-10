Program gff;
type MyArray = array[1..20] of integer;
Var 
  a:MyArray; kil:integer;

procedure RandZap(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    a[i]:=Random(60)-30;
end;

procedure vvod(var a:MyArray; n:integer);
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

procedure zam_per(var a:MyArray; n:integer);
Var i,m,j,t:integer;
begin
  m:=n;
  for i:=n downto 1 do
    begin
      if a[i] < 0 then
        begin
          for j:=i to m do
            begin
              if n = m then
                begin
                  m:=m-1;
                end
              else
                begin
                  t:=a[j];
                  a[j]:=a[j+1];
                  a[j+1]:=t;
                end;
            end;
           m:=m-1;
        end;
    end;
end;

begin
  Writeln('Введіть кількість елементів масиву: ');
  Readln(kil);
  Writeln('Даний масив: ');
  RandZap(a,kil);
  Vivod(a,kil);
  Writeln('Новий масив: ');
  zam_per(a,kil);
  Vivod(a,kil);
end.