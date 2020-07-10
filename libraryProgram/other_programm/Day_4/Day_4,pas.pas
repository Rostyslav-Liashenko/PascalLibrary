Program Day_4;
Uses Crt;
type MyArray = array[1..20] of integer;
Var x:MyArray;
    kil:integer;
    punkt:char;

procedure RandZap(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      a[i]:=Random(20)-10;
    end;
end;

procedure Vivod(Var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      Write(a[i]:4);
    end;
  Writeln;
end;

procedure DelMas(var a:Myarray; var n:integer);
Var nom,i:integer;
begin
  Write('Введіть номер для видалення: ');
  Readln(nom);
  for i:=nom to n do
    a[i]:=a[i+1];
    n:=n-1;
end;

procedure VSTMas(var a:MyArray; var n:integer);
Var i,nom,z:integer;
begin
  Write('Введіть номер для вставки: ');
  Readln(nom);
  Write('Введіть число яке потрібно вставити: ');
  Readln(z);
  for i:=n+1 downto nom do
    a[i]:=a[i-1];
    a[nom]:=z;
    n:=n+1;
end;


procedure BubbleSort(Var a:MyArray; n:integer);
Var i,j,t:integer;
begin
  for i:=1 to n-1 do
    begin
      for j:=1 to n-i do
        begin
          if a[j] > a[j+1] then
            begin
              t:=a[j];
              a[j]:=a[j+1];
              a[j+1]:=t;
            end
        end;
    end;
end;

procedure SelectSort(var a:MyArray; n:integer);
Var i,j,k,min:integer;
begin
  for i:=1 to n do
    begin
      min:=a[i]; j:=i;
      for k:=i+1 to n do
        if a[k] < min then
          begin
            min:=a[k];
            j:=k;
          end;
      a[j]:=a[i];
      a[i]:=min;
     end;
end;

Procedure Vstavka(Var a :MyArray; n:integer);
Var
  i, j,e,g:integer;
Begin
  for i:=2 to n do
    begin
      e:=A[i];
      j:=1;
      while (e>a[j]) do
        Inc(j);
      for g:=i-1 downto j do
        a[g+1]:=a[g];
      a[j]:=e;
    end;
End;

begin
  Writeln('Введіть кількість елементів: ');
  Readln(kil);
  repeat
  ClrScr;
  Writeln('==Меню==');
  Writeln('1 - Заповнити масив случайно');
  Writeln('2 - Вивести масив');
  Writeln('3 - Вставка елемента');
  Writeln('4 - Видалення елемента');
  Writeln('5 - Сортування Бульбашкою');
  Writeln('6 - Сортування Вибором');
  Writeln('7 - Сортування вставкою');
  Writeln('Введіть команду: ');
  Readln(punkt);
  case punkt of 
    '1':begin
         RandZap(x,kil);
         Vivod(x,kil);
         Readln();
        end;
    '2':begin
         Vivod(x,kil);
         Readln();
        end;
    '3':begin
         VSTMas(x,kil);
         Vivod(x,kil);
         Readln();
        end;
    '4':begin
          DelMas(x,kil);
          Vivod(x,kil);
          Readln();
        end;
    '5':begin
          BubbleSort(x,kil);
          Vivod(x,kil);
          Readln();
        end;
     '6':begin
          SelectSort(x,kil);
          Vivod(x,kil);
          Readln();
        end;
     '7':begin
          Vstavka(x,kil);
          Vivod(x,kil);
          Readln();
        end;
    end;
  until false;
end.