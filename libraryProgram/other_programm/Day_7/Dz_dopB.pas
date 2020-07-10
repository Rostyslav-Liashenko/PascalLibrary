Program paf;
type matrix = array[1..10, 1..10] of integer;
Var a:matrix;
    n,m:integer;
    
Procedure Vvod(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    for j:=1 to m do
      a[i,j]:=random(10) + 1;
  
end;

procedure Vivod(var a:matrix; n,m:integer);
Var i,j:integer;
begin
  for i:=1 to n do
    begin
      for j:=1 to m do
        Write(a[i,j]:4);
      Writeln;
    end;
end;

procedure zam;
Var row,zero:integer;
begin
  for row:=1 to 7 do
    begin
      zero := abs(3-row);
      while (zero < 7 - abs(3 - row)) do
        begin
          a[row,zero]:=0;
          zero:=zero+1;
        end;
    end;
end;



//procedure zam;
//Var i,j:integer;
//begin
//    i:=n div 2 + 1;
//    for j:=1 to n do
//      a[i,j]:=0; {Горизонтальна лінія}
//    j:=n div 2 + 1;
//    for i:=1 to n do
//      a[i,j]:=0; {Вертикальна лінія}
//    for i:=2 to n-1 do {Один прямокутник}
//        for j:=3 to n-2 do
//          a[i,j]:=0;
//    for i:=3 to n-2 do
//      for j:=2 to n-1 do
//        a[i,j]:=0;
//end;

begin
  Writeln('Введіть розмір матриці: ');
  Readln(n,m);
  Vvod(a,n,m);
  Writeln('Матриця');
  Vivod(a,n,m);
  Writeln('Процес діагоналі');
  //Diag2;
  zam;
  Vivod(a,n,m);
  Writeln;
end.