Program MultAndAdd;
var
	sum,mul,n:real;
	f:text;
begin
	{$I-}
	if ParamCount < 1 then
	begin
		Writeln('Please specify the fle name');
		halt;
	end;
	assign(f,ParamStr(1));
	reset(f);
	if IOResult <> 0 then
	begin
		writeln('Could not open ', ParamStr(1));
		halt;
	end;
	sum:=0;
	while not SeekEOF(f) do 
	begin
		mul:=1;
		while not SeekEoln(f) do
		begin
			read(f,n);
			mul:=mul * n;
		end;
		readln(f);
		sum:=sum + mul;
	end;
	Writeln(sum:7:5);
end.
