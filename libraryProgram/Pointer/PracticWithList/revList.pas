Program revList;
type 
	itemPtr=^item;
	item = record
		data:integer;
		next:itemPtr;
		end;
var 
	Head,tail,tmp,tmp2:itemPtr;
	n:integer;
begin
	tail:=nil;
	new(Head);
	tmp2:=Head;
	while not SeekEOf do
	begin
		new(tmp);
		Read(n);
		tmp^.data:=n;
		tmp2^.next:=tmp;
		tmp^.next:=tail;
		tmp2:=tmp;
	end;
	tmp:=Head^.next;
	while tmp <> nil do
	begin
		Write(tmp^.data,'-');
		tmp:=tmp^.next;
	end;
	Writeln;
end.
