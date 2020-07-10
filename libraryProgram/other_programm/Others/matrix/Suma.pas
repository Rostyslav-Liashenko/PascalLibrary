Program suma_matrix;
Uses Crt;
const last = 5;
type matrix = array[1..last,1..last] of integer;
Var 
  a:matrix;
  n:integer;
  
procedure inpMatrix( var mas:matrix);
Var i,j:byte;
begin
  for i:=1 to last do
    begin
      for j:=1 to last do
        begin
          mas[i,j]:= Random(50) + 1;
        end;
    end;  
end;

procedure OutMatrix(mas:matrix);
Var i,j:byte;
begin
TextColor(Red);
  for i:=1 to last do
    begin
      for j:=1 to last do
        begin
          Write(a[i,j]:4);
        end;
        Writeln;
    end;
end;

function summaMatrix(num_str:integer; mas:matrix):integer;
Var j:byte;
  sum:integer;
begin
     for j:= 1 to last do 
      begin
        sum:=sum + mas[num_str,j]
      end;
      result:=sum;
end;

function summaRowMatrix(num_row:integer; mas:Matrix):integer;
Var i:byte;
    sum:integer;
begin
  for i:=1 to last do
    begin
      sum:=sum + mas[i,num_row];
    end;
    result:=sum;
end;

begin
  Write;
  inpMatrix(a);
  outMatrix(a);
  TextColor(Green);
  Write('Введите номер строки: ');
  Readln(n);
  Writeln('Сума ', n, ' строки = ',SummaMatrix(n,a));
  Write('Введите номер столбика: ');
  Readln(n);
  Writeln('Сума ', n, ' столбика = ', summaRowMatrix(n,a));
  TextColor(blue);
end.