Program List_string;
type 
	PNode = ^Node;
	Node = record
		words:string[40];
		count:integer;
		next:Pnode;
	end;
var 
	Head:PNode;

function CreateNode(NewWord:string):PNode;
Var NewNode:PNode;
begin
	New(NewNode);
	NewNode^.word:=NewWord;
	NewNode^.count:=1;
	NewNode^.next:=nil;
	CreateNode:=NewNode;
end;

begin
	Head:=nil;
	

end.
