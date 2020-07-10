Program Banan;
Uses Crt;
Var b: array [0..20] of integer;
max:integer;
min:integer;
index:integer;

procedure fillArray();
Var k:integer;
number:integer;
begin
  Randomize;
  for k:= 0 to 20 do
    begin
      number:=Random(50);
      b[k]:= number; 
    end;
end;

procedure MaxIndex();
Var i:integer;
begin
index:=0;
  max:= b[0];
    for i:= 0 to 20 do
      begin
          if max < b[i] then
            begin
              max:=b[i];
              index:= i;
            end;
          if max = b[i] then
            begin
              max:=b[i];
              index:=i;
            end;
      end;
  Writeln('Максимальний елемент ', max,' позицiя елементу ', index);
end;

procedure MinIndex();
Var i:integer;
begin
  index:= 0;
  min:= b[0];
    for i:= 0 to 20 do
      begin
        if min > b[i] then
          begin
            min:=b[i];
            index:=i;
          end;
        if min = b[i] then
            begin
              min:=b[i];
              index:=i;
            end;
      end;
  Writeln('Мiнiмальний елемент ', min,' позицiя елементу ', index);
end;

procedure swap();
Var c:integer;
begin
    c:= max;
    max:=min;
    min:=c;
  Writeln('Змiна максимального i мiнiмального');
  Writeln('Мiнiмальний елемент ', min);
  Writeln('Максимальний елемент ', max);
end;
begin
  fillArray();
  MaxIndex();
  MinIndex();
  Swap();
end.