Program OlympiadCounter;
const
	MaxSchool = 67;
	MaxGroup = 100;
type 
	CountersArray = array[1..MaxSchool] of integer;
var 
	Counters:CountersArray;
	i,n:integer;
	max,maxIndex:integer;
	
begin
	
	Writeln('Begin');
	for i:=1 to MaxSchool do
		Counters[i]:=0;
	while not SeekEof do
	begin
		readln(n);
		n:=n div 100;
		Counters[n]:=Counters[n]+1;
	end;
	for i:=1 to MaxSchool do
		if Counters[i] <> 0 then
			Writeln('Shool nomer', i,' children = ', Counters[i]);
	max:=Counters[1];
	for i:=1 to MaxSchool do
	begin
		if Counters[i] > max then
			begin
				max:=Counters[i];
				maxIndex:=i;
			end;
	end;
	Writeln('Maximum children in School nomer  ',maxIndex,' cout children = ',max);
end.
