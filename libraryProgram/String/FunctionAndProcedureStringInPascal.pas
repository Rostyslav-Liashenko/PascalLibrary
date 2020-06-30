Program set_len;
var s:string;
begin
	s:='abrakadabra';
	Writeln(s);
	Writeln('Length s = ', Length(s));
	SetLength(s,4);
	Writeln(s);
	Writeln('Length s = ', Length(s));
	s:='asfasfsagsagsgagsag';
	Writeln('s = ', s);
	Writeln('Up string = ', UPCASE(s));
	s:='abrakadabra';
	Writeln('s = ', s);
	Writeln('copy = ', copy(s,5,20));
	delete(s,5,4); {it's procedure, not function}
	Writeln('delete = ', s);
	insert('Rostik',s,5);{it's peocedure, not function}
	Writeln('Insert = ', s);
	Writeln;
	Writeln('pos (Rostik) = ', pos('Rostik',s));
	
end.
