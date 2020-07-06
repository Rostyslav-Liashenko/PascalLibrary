Program OptimizedRevList;
type
	itemPtr = ^item;
	item = record
		data:integer;
		next:^item;
		end;
Var
	tmp,first,last:ItemPtr;
	n:integer;
begin
	first:=nil;
	while not SeekEOF do
	begin
		readln(n);
		if first = nil then
		begin
			new(first);
			last:=first;
		end
		else
		begin
			new(last^.next);
			last:=last^.next;
		end;
		last^.data:=n;
		last^.next:=nil;
	end;
	tmp:=first;
	Write('nil - ');
	while tmp <> nil do
	begin
		Write(tmp^.data,' - ');
		tmp:=tmp^.next;
	end;
	Writeln('nil');
end.
