Program Practic_Ptr_1;
var 
	s:^string;
	i:integer;
begin
	new(s);
	Writeln('Input the row: ');
	Readln(s^);
	for i:=Length(s^) downto 1  do
	begin
		Write(s^[i]);
	end;
	Writeln;
	dispose(s);

end.
