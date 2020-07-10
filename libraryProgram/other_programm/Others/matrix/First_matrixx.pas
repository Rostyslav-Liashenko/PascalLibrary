Program matr_demo;
const nn = 10;
type arraya = array[1..nn, 1..nn] of integer;
     oneX = array[1..nn] of integer;
Var
  a:arraya;
  b:oneX;
  i,j:byte;
  m:integer;
begin
  
  for i:=1 to nn do
    begin
      Writeln('Введите число для заповнення: ');
      Readln(b[i]);
    end;

  for i:=1 to nn do
    begin
      for j:=1 to nn do
        begin
          m := b[i];
          a[i,j] := m;
        end;
    end;
    
    for i:=1 to nn do
      begin
        for j:=1 to nn do
          begin
            Write(a[i,j]:5);
          end;
          Writeln;
      end;
end.