program Deca;
type
	LongItem2Ptr = ^LongItem2;
	LOngItem2 = record
		data:longint;
		prev,next:LongItem2Ptr;
	end;

	LongDeque = record
		first,last:LongItem2Ptr;
	end;

procedure LongDequeInit(var deque:LongDeque);
begin
end;

Procedure LongDequePushFront(var deque:LongDeque; n:longint);
begin
end;

Procedure LongDequePushBack(var deque:LongDeque; var n:Longint);
begin
end;

function LongDequePopFront(var deque:LongDeque; var n:longint):boolean;
begin
end;

function LongDequePopBack(var deque: LongDeque, var n:longint):boolean;
begin

end;

function LongDequeIsEmpty(var deque:LongDeque):boolean;
begin
end;
