Program af;
Const MaxSize = 10;
      MinSize = 1;
      
Type MyArray = array [MinSize..MaxSize] of integer;

Var a:myArray;
    
    
 procedure PrintArray(ar:MyArray);
 Var i:integer;
 begin
  for i:=MinSize to MaxSize do
    begin
      write(ar[i]:4);
    end;
   Writeln;
 end;
 
 procedure FullArray(var ar:MyArray);
 Var i:integer;
 begin
  Randomize;
  for i:=MinSize to MaxSize do
    begin
      ar[i]:=i;
    end;
 end;
 
 procedure Switch(var ar:MyArray);
 Var t,i:integer;
 begin
  t:=ar[MinSize]; 
  for i:=MinSize to MaxSize do
    begin
     if i = MaxSize then
        begin
          ar[i]:=t;
          break;
        end;
      ar[i]:=ar[i+1];
    end;
 end;
 
 procedure Switch2(var ar:MyArray);
 Var t,i:integer;
 begin
  t:=ar[MaxSize]; 
  for i:=MaxSize downto MinSize do
    begin
     if i = MinSize then
        begin
          ar[i]:=t;
          break;
        end;
      ar[i]:=ar[i-1];
    end;
 end;
 
begin
    FullArray(a);
    Writeln('Вхідний массив: ');
    PrintArray(a);
    Switch(a);
    Writeln('Вздвиг в лево: ');
    PrintArray(a);
    Switch2(a);
    Switch2(a);
    Writeln('Вздвиг в право: ');
    PrintArray(a);
end.