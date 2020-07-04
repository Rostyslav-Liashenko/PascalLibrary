Program CreateAndShowList;
type 
	ItemPtr = ^item;
	item = record
			data:integer;
			next:ItemPtr;
		   end;
var 
	tmp,Head:itemPtr;
	n:integer;
begin
	Head:=nil;
	while not SeekEOF do
	begin
		read(n);
		new(tmp);
		tmp^.data:=n;
		tmp^.next:=Head;
		Head:=tmp;
	end;
	tmp:=Head;
	while tmp <> nil do
	begin
		Writeln(tmp^.data);
		tmp:=tmp^.next;
	end;
end.
