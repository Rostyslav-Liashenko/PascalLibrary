Program rec_test;

procedure PrintOfDigitsOfNumber(n:integer);
begin
	if n > 0 then
	begin
		PrintOfDigitsOfNumber(n div 10);
		write(n mod 10,' ')
	end;
end;

begin
	PrintofDigitsOfNumber(7583);
end.
