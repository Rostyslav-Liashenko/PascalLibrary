program lab3;
uses crt;
Label l;
type MyArray = array[1..10] of integer;
var
  A, B: MyArray;
max,min,KilA,KilB,i,j,t,k:integer;
zn:real;

procedure delE(var a:MyArray; var n:integer; num:integer);
Var i:integer;
begin
  for i:=num to n do
    a[i]:=a[i+1];
  Dec(n);
end;

procedure Show(var a:Myarray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      Write(a[i]:4);
    end;
  Writeln;
end;


begin
Write('Введiть розмiр масиву (n < 100): ');
  Readln(KilA);
  Writeln('Вхiдний масив A: ');
  for i := 1 to KilA do
  begin
    A[i] := Random(100) + 1;
  end;
  Show(a,kilA);
Writeln;
min:=a[1];
max:= a[1];
for i:=2 to KILa do
begin
if a[i]<min then
min:=a[i]
else
if a[i]>max then
max:=a[i];
end;
writeln;
Writeln('min: ' , min);
writeln;
writeln('max: ' , max);
//мій код
zn:=(min + max) / 2;
Writeln('(min + max) / 2 = ', zn);
for i:=1 to KilA do
  begin
    if a[i] > zn then
      begin
        Inc(Kilb);
        b[kilB]:=a[i];
        a[i]:=0;
      end;
  end;
 for i:=1 to KilA do
  begin
    if a[i] = 0 then
      begin
        for j:=KilA downto 1 do
          begin
            if a[j] <> 0 then
              begin
                t:=a[i];
                a[i]:=a[j];
                a[j]:=t;
              end;
          end;
      end;
  end;
t:=0;
for i:=1 to Kila do
  begin
    if a[i] <> 0 then
      Inc(t)
    else
      break;
  end;
a[t+1]:=a[kilA];
Kila:=t+1;
Writeln('Нові стани масивів: ');  
Writeln('масив А: ');
Show(a,kila);
Writeln('масив B: ');
show(b,kilb);
Writeln('Відсортований масив B: ');
for i := 1 TO KilB do
  BEGIN
   K:= i;
   FOR j := i + 1 TO KilB
   DO IF b[j] < b[k] THEN k := J;
   t:=b[i];
   b[i] := b[k];
   b[k] := t;
 END;
show(b,kilB);
end.