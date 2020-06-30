Program BitOperation;
Var x,y,p,q,r:integer;
begin
	x := 42;
	y := 166;
	Writeln('x = ',x);
	Writeln('y = ', y);
	p:=x and y;
	q:= x or y;
	r:= x xor y;
	Writeln('x = ', x,' !x = ',not x );
	Writeln('x and y = ',p );
	Writeln('x or y = ', q);
	Writeln('x xor y = ',r);
	Writeln('1 shl 5 = ', 1 shl 5);
	Writeln('21 shl 3 = ', 21 shl 3);
	Writeln('21 shr 3 = ', 21 shr 3);

end.
