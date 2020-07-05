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


procedure AddNode(var Head:itemPtr; var  countNode:word);
var
       	tmp:itemPtr;
	n:integer;
begin
	while not SeekEOf do
	begin
		read(n);
		new(tmp);
		tmp^.data:=n;
		tmp^.next:=Head;
		Head:=tmp;
		CountNode:=CountNode + 1;
	end;
end;

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
	AddNode(Head,CountNode);
	Writeln('Count node = ',countNode);
	Writeln('==list==');
	ShowList(Head);
	Writeln('==Insertion Node in list==');
	InsertionNode(Head,CountNode);
	ShowList(Head);
end.
