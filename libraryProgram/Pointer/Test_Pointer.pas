Program Pointer;
var 
	r:real;
	p:^real;
begin
	p:=@r;
	p^:=25.7;
	writeln('r = ', r:6:2);
end.
