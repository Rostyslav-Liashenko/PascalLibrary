Program Prog;
uses arr;
Var 
	b:MyArray;
	i:integer;
begin
	for i:=1 to Len do
		b[i]:=Random(100);
	ShowArray(b);
	Writeln('Max elenemt: ',MaxElementArray(b));
	Writeln('Summa array: ', SummaArray(b));
end.
