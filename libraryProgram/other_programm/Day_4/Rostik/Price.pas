Program train;
type MyArray = array[1..20] of real;
type LastName = array[1..20] of string;
Var Humans:LastName;
    time:MyArray;
    kil:integer;

Procedure inp();
Var i:integer;
begin
  Writeln('Введіть кількість учасників: ');
  Readln(kil);
  for i:=1 to kil do
    begin
      Write('Введіть прізвище: ');
      Readln(Humans[i]);
      Write('Введіть час за який пробіг: ');
      Readln(time[i]);
    end;
end;

Procedure SelectSort(var a:LastName; var b:MyArray; n:integer);
Var i,j,k:integer;
    min:real;
    s:string;
begin
  for i:=1 to n do
    begin
      min:=b[i];
      s:=a[i];
      j:=i;
      for k:=i+1 to n do
        begin
          if b[k] < min then
            begin
              min:=b[k];
              s:=a[k];
              j:=k;
            end;
        end;
        b[j]:=b[i];
        b[i]:=min;
        a[j]:=a[i];
        a[i]:=s;
    end;
end;

procedure Out();
Var i:integer;
begin
  Writeln;
  for i:=1 to 3 do
    begin
      Write('Місце ',i,' Прізвище:', Humans[i], ' Час: ',time[i]);
      Writeln;
    end;
end;

begin
 inp;
 SelectSort(Humans,time,kil);
 out;
end.