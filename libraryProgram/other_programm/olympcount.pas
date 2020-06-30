Program OlympiadCounter;
const 
	MaxSchool = 67;
	MaxGroup = 100;
type 
	CountersArray = array[1..MaxSchool] of integer;
var
	Counters:CountersArray;
	i,c,n:integer;
begin
	for i:=1 to MaxSchool do
		Counters[i]:=0;
	{$I-}
	while not SeekEof do
	begin
		readln(c);
		if IOResult <> 0 then
		begin
			writeln('Incorrect data');
			halt(1);
		end;
		n:=c div MaxGroup;
		if (n < 1) or (n > MaxSchool) then
		begin
			writeln('illegal school id: ', n,'[',c,']');
			halt(1);
		end;
		Counters[n]:=Counters[n]+1;
	end;
	n:=1;
	for i:=1 to MaxSchool do
		if Counters[i] > Counters[n] then 
			n:=i;
	for i:=1 to MaxSchool do
		if Counters[i] = Counters[n] then
			writeln('School ', i);
end.
