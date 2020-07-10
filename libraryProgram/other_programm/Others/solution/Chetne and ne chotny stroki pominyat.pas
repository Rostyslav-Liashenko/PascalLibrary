var
  F1, F2: text;
  S1, S2: string;

begin
  Assign(F1, 'C:\text\1.txt'); 
  Reset(F1);
  Assign(F2, 'C:\text\2.txt'); 
  Rewrite(F2);
  
  while not Eof(F1) do
  begin
    Readln(F1, S1);
    if not Eof(F1) then begin
      Readln(F1, S2);
      Writeln(F2, S2);
    end;
    Writeln(F2, S1);
  end;
  
  Close(F1); 
  Close(F2);
  Writeln('OK');
  Readln;
end. 