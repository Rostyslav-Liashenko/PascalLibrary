Program DoublePointer;
type
	itemptr = ^item;
	item = record
		data:integer;
		next:itemptr;
		end;
var
	first,tmp:itemptr;
	pp:^itemptr;
	n:integer;
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
	pp:=@first;
	while pp^ <> nil do
	begin
		if pp^^.data < 0 then
		begin
			tmp:=pp^;
			pp^:=pp^^.next;
			dispose(tmp);
		end
		else
			pp:=@(pp^^.next);
	end;
	tmp:=first;
	while tmp <> nil do
	begin
		Write(tmp^.data,'  ');
		tmp:=tmp^.next;
	end;
	Writeln;
	{insert node in list with double pointer}

	{new(tmp)
	 tmp^.next:=pp^;
	 tmp^.data:=n;
	 pp^.data:=tmp;
	}
	{insertion node in sort list with double pointer}
	 {
	  pp:=@first;
	  while (pp^ <> nil) and (pp^^.data < n) do
		 	pp:=@(pp^.next);
	  new(tmp);
	  tmp^.data:=n;
	  tmp^.next:=pp^;
	  pp^:=tmp;
	 }
end.
