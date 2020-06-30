Program GenereateNumTxt;
const
	name = 'numbers.txt';
	start = 1000;
	step = 1001;
	count = 100;
var
	f:text;
	i:integer;
	n:longint;
begin
	assign(f,name);
	rewrite(f);
	n:=start;
	for i:=1 to count do
	begin
		writeln(f,n);
		n:=n+step;
	end;
	close(f);
end.
