Program St_250;
type matrix = array[1..20,1..20] of integer;
Var a:matrix;
    kil:word;

procedure Vivod( var a:matrix; n:integer);
Var i,j:word;
begin
  for i:=1 to n do
    begin
      for j:=1 to n do
        Write(a[i,j]:4);
      Writeln;
    end;
end;

procedure Zap(var a:matrix; n:integer);
Var i,j:word;
begin
  for i:=1 to n do
    for j:=1 to n do
      a[i,j]:=Random(10);
end;

procedure RuchVvod(var a:matrix; n:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    begin
      for j:=1 to n do
        begin
          Read(a[i,j]);
          Write(' ':4);
        end;
      Writeln;
    end;
end;

procedure calc(a:matrix; n:integer);
Var i,j,h,g:integer;
    b,max,sum:integer;
begin
  b:=0;
  for i:=1 to n do
    begin
      for j:=1 to n do
        begin
          if i < j then
            begin
              max:=a[i,j];
              for h:=1 to n do
                begin
                  for g:=1 to n do
                    begin
                      if h > g then
                        begin
                          if max < a[h,g] then
                            begin
                              INC(b);
                              break;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
   if b <> 0 then
    begin
      for i:=1 to n do
        sum:=sum + a[i,i];
    end
   else
    begin
      for i:=1 to n do
        for j:=1 to n do
          if j > i then
            sum:=sum+a[i,j];
    end;
    Writeln('Сума = ',sum);
end;
  
begin
  Writeln('Введіть розмір матриці: ');
  Readln(kil);
  Zap(a,kil);
  Vivod(a,kil);
  calc(a,kil);
end.