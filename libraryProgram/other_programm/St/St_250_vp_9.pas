Program Sttsgs;
type matrix = array[1..20,1..20] of integer;
Var
  a:matrix; kil:integer;
  
Procedure vivod(var a:Matrix; n:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    begin
      for j:=1 to n do
        Write(a[i,j]:4);
      Writeln;
    end;
end;

Procedure RandZap(var a:Matrix; n:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to n do
      a[i,j]:=Random(4);
end;

procedure Rad(var a:matrix; n,i1,i2:integer);
Var t,j:integer;
begin
  for j:=1 to n do
    begin
       t:=a[i1,j];
      a[i1,j]:=a[i2,j];
      a[i2,j]:=t;
    end;
end; 

procedure Stp(var a:matrix; n,j1,j2:integer);
Var i,t:integer;
begin
  for i:=1 to n do
    begin
      t:=a[i,j1];
      a[i,j1]:=a[i,j2];
      a[i,j2]:=t;
    end;
end;

function proverka(var a:Matrix; n:integer; var cooI,cooJ:integer):boolean; {процедура для поиска нуля в обох диагоналях}
Var i,j:integer;
    b:boolean;
begin
  b:=false;
  for i:=1 to n do
    begin
      for j:=1 to n do
        begin
          if ((i = kil - j + 1) or (i = j)) and (a[i,j] = 0) then
            begin
              result:=true;
              b:=true;
              cooI:=i;
              cooj:=j;
              break;
            end;
        end;
        if b then
          break;
    end;
end;

procedure zam(var a:matrix; n:integer);
Var g,h,c:integer;
begin
  while(proverka(a,kil,g,h)) do
    begin
      c:=random(2);
      if c = 0 then
        begin
          if (g > 1) and (g <> n)  then 
            rad(a,n,g,g+1)
          else
            begin
              if (h > 1) and (h <> n) then
                begin
                  stp(a,n,h,h+1);
                end;
            end;
        end;
    end;
end;

begin
  Writeln('Введіть розмір матриці: ');
  Readln(kil);
  RANDZap(a,kil);
  Vivod(a,kil);
  zam(a,kil);
  Writeln;
  Vivod(a,kil);
end.