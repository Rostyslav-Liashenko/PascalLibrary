Program rec_chart;

Procedure rec_printf_char(ch:char; n:integer);
begin
	if n > 0 then 
	begin
		Write(ch);
		rec_printf_char(ch,n-1);
	end;
end;

begin
	rec_printf_char('#',2);
	writeln;
end.
