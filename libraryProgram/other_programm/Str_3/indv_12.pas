Program indv;
type ArrChar = array[1..20,1..20] of char;
Var a:ArrChar;
    n:integer;
    
procedure Zap(var a:ArrChar; n:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    begin
      for j:=1 to n do
        begin
          if i = j then
            a[i,j]:='c';
          if i < j then
            a[i,j]:='v';
          if i > j then
            a[i,j]:='п';
        end;
    end;
end;

procedure Vivod(a:ArrChar; n:integer);
Var 
  i,j:integer;
begin
  for i:=1 to n do
    begin
      for j:=1 to n do
        Write(a[i,j]:4);
      Writeln;
    end;
end;

begin
  Writeln('Введіть розмір матриці: ');
  Readln(n);
  Zap(a,n);
  Writeln('Матриця');
  Vivod(a,n);
end.