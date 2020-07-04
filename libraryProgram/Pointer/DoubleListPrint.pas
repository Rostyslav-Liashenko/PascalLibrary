Program rostik;
type 
	itemPtr = ^item;
	item = record
		data:integer;
		next:itemPtr;
		end;
var 
	tmp,Head:itemPtr;
	tmp2,Head2:itemPtr;
	n:integer;
	i:word;
begin
	Head:=nil;
	while not SeekEOf do
	begin
		read(n);
		new(tmp);
		tmp^.data:=n;
		tmp^.next:=Head;
		Head:=tmp;
	end;
	Writeln('Show list');
	Head2:=nil;
	tmp:=Head;
	while tmp <> nil do
	begin
		new(tmp2);
		tmp2^.data:=tmp^.data;
		tmp2^.next:=Head2;
		Head2:=tmp2;
		tmp:=tmp^.next;
	end;
	for i:=1 to 2 do
	begin
		tmp2:=Head2;
		while tmp2 <> nil do
		begin
			Writeln(tmp2^.data);
			tmp2:=tmp2^.next;
		end;
		Writeln;
	end;
end.
