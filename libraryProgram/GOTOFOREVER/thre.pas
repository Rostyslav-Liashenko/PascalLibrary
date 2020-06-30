
Var  
	i,j,n:integer;
	k:integer;
Label 
	exitFoLoop;
begin
	k:=0;
	for i:=1 to 10 do
		for j:=1 to 10 do
			for n:=1 to 10 do
				begin
					k:=k+1;
					goto exitFoLoop;
				end;
	exitFoLoop:
	writeln('k = ', k);
end.
