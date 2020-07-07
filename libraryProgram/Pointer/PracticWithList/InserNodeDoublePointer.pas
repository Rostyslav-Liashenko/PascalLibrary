Program MyDoublePointer;
type
	itemptr = ^item;
	item = record
		data:integer;
		next:itemptr;
		end;
var
	first,tmp:itemptr;
	n,i,poz:integer;
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
	{insert one node in list}
	Write('input the number for insert:  ');
	Readln(n);
	write('input the pozition for insert: ');
	Readln(poz);
	doublePointer:=@first;
	for i:=1 to poz do
	begin
		doublePointer:=@(doublePointer^^.next);
	end;
	new(tmp);
	tmp^.data:=n;
	tmp^.next:=doublePointer^;
	doublePointer^:=tmp;
	{print list}
	doublePointer:=@first;
	while doublePointer^ <> nil do
	begin
		Write(doublePointer^^.data,'  ');
		doublePointer:=@(doublePointer^^.next);
	end;
	Writeln;
	
end.
