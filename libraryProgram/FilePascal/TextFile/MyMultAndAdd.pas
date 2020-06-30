Program MyMultAndAdd;
var 
	f:text;
	mult,n,sum:real;
	name:string;
begin
	{$I-}
	Writeln('Input the name of file: ');
	Readln(name);
	assign(f,name);
	reset(f);
	if IOResult <> 0 then
	begin
		Writeln('Error, not access to file');
		halt(1);
	end;
	sum:=0;
	while not SeekEOF(f) do
	begin
		mult:=1;
		while not SeekEOLN(f) do
		begin
			read(f,n);
			mult:=mult*n;
		end;
		readln(f);
		sum:=sum + mult;
	end;
	Writeln('sum = ', sum:7:5);
end.
