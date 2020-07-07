Program MyDoublePointer;
type
	itemptr = ^item;
	item = record
		data:integer;
		next:itemptr;
		end;
var
	first,tmp:itemptr;
	n:integer;
	doublePointer:^itemptr;
begin
	first:=nil;
	while not seekEOf do
	begin
		readln(n);
		new(tmp);
		tmp^.data:=n;
		tmp^.next:=first;
		first:=tmp;
	end;
	tmp:=first;
	while tmp <> nil do
	begin
		Write(tmp^.data,'  ');
		tmp:=tmp^.next;
	end;
	Writeln;
	doublePointer:=@first;
	while doublePointer^ <> nil do
	begin
		if doublePointer^^.data < 0 then
		begin
			tmp:=doublePointer^;
			doublePointer^:=doublePointer^^.next;
			dispose(tmp);
		end
		else
			doublePointer:=@(doublePointer^^.next);
	end;
	doublePointer:=@first;
	while doublePointer^ <> nil do
	begin
		Writeln(doublePointer^^.data);
		doublePointer:=@(doublePointer^^.next);
	end;
	
end.
