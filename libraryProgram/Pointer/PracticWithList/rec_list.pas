Program rec_list;
type
	itemptr = ^item;
	item = record
		data:integer;
		next:itemptr;
	end;


function isEmpty(var Head:itemptr):boolean;
begin
	if Head = nil then
		isEmpty:=true
	else
		isEmpty:=false;
end;

procedure ShowList(var Head:itemptr);
var
	tmp:itemptr;
begin
	if isEmpty(Head) then
		Writeln('list is empty')
	else
	begin
		tmp:=Head;	
		while tmp <> nil do
		begin
			Write(tmp^.data,' -> ');
			tmp:=tmp^.next;
		end;
		Writeln('nil');
	end;
end;

function ItemListSum(var Head:itemptr):integer;
var
	tmp:itemptr;
	sum:integer;
begin
	tmp:=Head;
	sum:=0;
	while tmp <> nil do
	begin
		sum:=sum + tmp^.data;
		tmp:=tmp^.next;
	end;
	ItemListSum:=sum;
end;

function rec_ItemListSum(Head:itemptr):integer;
var
	tmp:itemptr;
begin
	tmp:=Head;
	if tmp = nil then
		rec_ItemListSum:=0
	else
		rec_ItemListSum:=tmp^.data + rec_ItemListSum(tmp^.next);
end;

procedure rec_AddNumIntoSortedList(var p:itemptr; n:integer);
var
	tmp:itemptr;
begin
	if (p = nil) or (p^.data > n) then
	begin
		new(tmp);
		tmp^.data:=n;
		tmp^.next:=p;
		p:=tmp;
	end
	else
		rec_AddNumIntoSortedList(p^.next, n);
end;

procedure rec_DeleteItemList(Head:itemptr);
begin
	if  Head  = nil then
		exit;
	rec_DeleteItemList(Head^.next);
	dispose(Head);
end;

var 
	Head:itemptr;
	tmp:itemptr;
	n:integer;

begin
	Head:=nil;
	while not SeekEof do
	begin
		Readln(n);
		new(tmp);
		tmp^.data:=n;
		tmp^.next:=Head;
		Head:=tmp;

	end;
	ShowList(Head);
	Writeln('Summa item = ', ItemListSum(Head));
	Writeln('Recursion Suma item = ', rec_ItemListSum(Head));
	{rec_DeleteItemList(Head);}
	ShowList(Head);
	rec_AddNumIntoSortedList(Head,4);
	ShowList(Head);

end.
