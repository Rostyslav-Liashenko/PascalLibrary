Program TreeBinFind;
type
	TreeNodePtr = ^TreeNode;
	TreeNode = record
		data:longint;
		left,right:TreeNodePtr;
	end;
	TreeNodePos = ^TreeNodePtr;

function SumTree(p:TreeNodePtr):longint;
begin
	if p = nil then
		SumTree:=0
	else
		SumTree:=SumTree(p^.left) + p^.data + SumTree(p^.right);
end;

function AddToTree(var p:TreeNodePtr; val:longint):boolean;
begin
	if p = nil then
	begin
		new(p);
		p^.data:=val;
		p^.left:=nil;
		p^.right:=nil;
		AddToTree:=true;
	end
	else
	if val < p^.data then
		AddToTree:=AddToTree(p^.left,val)
	else
	if val > p^.data then
		AddToTree:=AddToTree(p^.right,val)
	else
		AddToTree:=false
end;

function SearchTree(var p:TreeNodePtr; val:longint):TreeNodePos;
begin
	if (p = nil) or (p^.data = val) then
		SearchTree:=@p
	else
	if val < p^.data then
		SearchTree:=SearchTree(p^.left,val)
	else
		SearchTree:=SearchTree(p^.right,val);
end;

function newAddToTree(var p:TreeNodePtr; val:longint):boolean;
var
	pos:TreeNodePos;
begin
	pos:=SearchTree(p,val);
	if pos^ = nil then
	begin
		new(pos^);
		pos^^.data:=val;
		pos^^.left:=nil;
		pos^^.right:=nil;
		newAddToTree:=true
	end
	else
		newAddToTree:=false;
end;

function newIsInTree(p:TreeNodePtr; val:longint):boolean;
var
	pos:TreeNodePos;
begin
	pos:=SearchTree(p,val);
	NewIsInTree:=pos^ <> nil
	
end;

function IsInTree(p:TreeNodePtr; val:longint):boolean;
begin
	if p = nil then
		IsInTree :=false
	else
	if val < p^.data then
		IsInTree:=IsInTree(p^.left,val)
	else
	if val > p^.data then
		IsInTree:=IsInTree(p^.right,val)
	else
		IsInTree:=true
end;

var
	root:TreeNodePtr = nil;
begin

end.
