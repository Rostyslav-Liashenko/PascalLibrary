Program lab;
Type MyArray = array[1..20] of integer;
Var x:MyArray;
    mn,kil:integer;
    
procedure RandFull(var a:MyArray; n:integer);
Var i:byte;
begin
  for i:=1 to n do
    a[i]:=Random(20)-10;
end;

procedure Print(var a:MyArray; n:integer);
Var i:integer;
begin
  for i:=1 to n do
    begin
      Write(a[i]:4);
    end;
  Writeln;
end;

procedure BubbleSort(var a:Myarray; n:integer);
var i,j:integer;
    t:integer;
begin
  for i:=1 to n-1 do
    for j:=1 to n-i do
      begin
        if a[j] > a[j+1] then
          begin
            t:=a[j];
            a[j]:=a[j+1];
            a[j+1]:=t;
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

function poshuk_bin(var a:Myarray; n,z:integer):integer;
var l,i,r:integer;
begin
    l:=1; r:=n;
    while l<=r do
      begin
        i:=(l+r) div 2;
        if a[i] = z then
          break
        else
         if a[i] < z then
            l:=l+1
         else
            r:=r+1;      
       end;
   if a[i] = z then
      Poshuk_bin:=i
   else
      Poshuk_bin:=0;
end;

begin
  Write('Введіть кількість елементів масива: ');
  Readln(kil);
  RandFull(x,kil);
  Print(x,kil);
  SelectSort(x,kil);
  Print(x,kil);
  Writeln('Введіть яке число шукати: ');
  Readln(mn);
  Writeln('Номер позиції елемента:',poshuk_bin(x,kil,mn));
end.