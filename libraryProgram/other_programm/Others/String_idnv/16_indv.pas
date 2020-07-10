const CSize = 10;
type MyArray = array[1..CSize] of string;
var 
    Arr:MyArray;
    s:string;
    
procedure ParseString(var s:string; var a:MyArray);
Var i,w:integer;
    c:char;
begin
  w:=0;
  c:=Char(32);
  for i:=1 to Length(s) do
    begin
      if (ORd(s[i]) > 32) then
        begin
          if (Ord(c) <= 32) then
              w:=w+1;
          a[w]:=a[w] + s[i];
        end;
       c:=s[i];
    end;
end;

procedure Scklad(var a:MyArray); {Мій самий хужий код, s - Строка із масіва --->}
Var i,j,k,len:integer;            {len - довжина рядка, яка обновляється по всій программі -->}
    s:string;                     {j - счетчик, k - просто переменна для сравнивание позиции}
begin                             {після кожного проходу довжина обновляється}
  for i:=1 to CSIze do            {}
    begin
      s:=a[i];
      len:=Length(s);
      j:=1;
      k:=2;
      while (len >= j) do
        begin
          if (j = k)then
            begin
              Insert('-',s,j+1);
              k:=k+3;
              len:=Length(s);
            end;
            j:=j+1;
        end;
       a[i]:=s;
    end;
end;

{ Стара процедура більш понятна
procedure Scklad(var a:MyArray);
Var i,j,k:integer;
    s:string;
begin
  for i:=1 to CSIze do
    begin
      s:=a[i];
      k:=2;
      for j:=1 to Length(s) do
        begin
          if j = k then
            begin
              Insert('-',s,j+1);
              k:=k+3;
            end;
        end;
       a[i]:=s;
    end;
end;
}

procedure Print(var a:MyArray);
Var i:integer;
begin
  for i:= 1 to CSize do
    begin
      if a[i] = '' then
        break;
      Writeln(a[i]);
    end;
end;

begin
  Writeln('Введите строку: ');
  Readln(s);
  ParseString(s,arr);
  Scklad(arr);
  Print(arr);
end.