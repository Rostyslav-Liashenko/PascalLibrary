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
	countNode:word;

procedure ShowList(Head:ItemPtr);
var tmp:ItemPtr;
begin
	Writeln('list');
	tmp:=Head;
	while tmp <> nil do
	begin
		Write(tmp^.data,'-');
		tmp:=tmp^.next;
	end;
	Writeln;
	Writeln('Count node = ', CountNode);
end;

procedure InsertionNode(Head:itemPtr; var CountNode:word);
var 
	tmp:itemPtr;
	InserNode:itemPtr;
	i,poz:word;
	num:integer;
begin
	tmp:=Head;
	Writeln('Input the position in list for insert:');
	Readln(poz);
	Writeln('Input the number for insert: ');
	Readln(num);
	for i:=1 to poz - 1 do
	begin
		tmp:=tmp^.next;
	end;
	new(InserNode);
	InserNode^.data :=num;
	InserNode^.next:=tmp^.next;
	tmp^.next:=InserNode;
	CountNode:=CountNode + 1;

end;


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
	Writeln('==list==');
	ShowList(Head);
	Writeln('==Insertion Node in list==');
	InsertionNode(Head,CountNode);
	ShowList(Head);
end.
