Program Dorev;

function DoReverseNumber(n,m : longint):longint;
begin
	if n = 0 then
		DoReverseNumber:=m
	else
		DoreverseNumber:=DoReverseNumber(n div 10, m * 10 + n mod 10)
end;

function ReverseNumber(n:longint):longint;
begin
	ReverseNumber:=DoReverseNumber(n,0);
end;

begin
	Writeln('752  reverse = ',ReverseNumber(752));
end.
