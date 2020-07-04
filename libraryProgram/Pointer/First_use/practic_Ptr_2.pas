Program practic_ptr_2;
var 
	num:integer;
	j:^integer;
begin
	j:=@num;
	Readln(num);
	Writeln('j^ = ', j^);
end.
