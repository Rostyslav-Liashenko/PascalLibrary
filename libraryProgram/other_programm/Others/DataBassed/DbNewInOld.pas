var F1, F2: text;
 N: integer;
begin
 Assign(F1, 'C:\text\BD\2.txt'); 
 Reset(F1);
 Assign(F2, 'C:\text\BD\newPolice.txt');
 Rewrite(F2);
 while not Eof(F1) do 
 begin
   Readln(F1, N);
   Writeln(F2,N);
 end;
 Close(F1);
 Close(F2);
end. 