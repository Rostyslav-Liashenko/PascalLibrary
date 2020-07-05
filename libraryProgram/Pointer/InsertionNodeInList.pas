Program CreateAndShowList;
type 
	ItemPtr = ^item;
	item = record
			data:integer;
			next:ItemPtr;
		   end;
var 
	tmp,Head,PInser:itemPtr;
	countNode,n:integer;
	i:word;
begin
	Head:=nil;
	countNode:=1;
	while not SeekEOF do
	begin
		read(n);
		new(tmp);
		tmp^.data:=n;
		tmp^.next:=Head;
		Head:=tmp;
		countNode:=countNode + 1;
	end;
	Writeln('Count node = ',countNode);
	Writeln('list');
	tmp:=Head;
	while tmp <> nil do
	begin
		Write(tmp^.data,' - ');
		tmp:=tmp^.next;
	end;
	Writeln;
	tmp:=Head;
	for i:=1 to countNode-3 do
	begin
		tmp:=tmp^.next;
	end;	
	New(PInser);
	PInser^.data:=25;
	PInser^.next:=tmp^.next;
	tmp^.next:=PInser;
	writeln('list');
	tmp:=Head;
	while tmp <> nil do
	begin
		write(tmp^.data,' - ');
		tmp:=tmp^.next;
	end;
end.
