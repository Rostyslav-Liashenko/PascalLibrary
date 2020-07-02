Program practic_ptr_3.pas;
var 
	num1,num2:^integer;
begin
	new(num1);
	new(num2);
	Writeln('num1^ = ', num1^);
	writeln('num2^ = ', num2^);
	readln(num1^);
	readln(num2^);
	Writeln('num1^ = ', num1^);
	Writeln('num2^ = ', num2^);
	writeln('suma = ', num1^+num2^);
	dispose(num1);
	dispose(num2);
end.
