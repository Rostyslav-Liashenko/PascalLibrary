Program MovingHello;
uses crt;
const
	Message = 'Hello, world!';

procedure ShowMessage(x,y:integer; msg:string);
begin
	GotoXY(x,y);
	write(msg);
	GotoXy(1,1);
end;

procedure HideMessage(x,y:integer; msg:string); {print middle text}
var
	len,i:integer;
begin
	len:=length(msg);
	GotoXy(x,y);
	for i:=1 to len do
		Write(' ');
	GotoXy(1,1);
end;

procedure MoveMessage(var x,y:integer; msg:string; dx,dy:integer);
begin
	HideMessage(x,y,msg);
	x:=x + dx;
	y:=y + dy;
	ShowMessage(x,y,msg)
end;

var 
	Curx,CurY:integer;
	ch:char;
begin
	clrscr;
	CurX :=(ScreenWidth - length(Message)) div 2;
	CurY := ScreenHeight div 2;
	ShowMessage(CurX,curY,Message);
	while true do
	begin
		ch:=Readkey;
		if ch <> #0 then
			break;
		ch:=Readkey;
		case ch of 
			#75:
				MoveMessage(CurX,CurY,Message,-1,0);
			#77:
				MoveMessage(CurX,CurY,Message,1,0);
			#72:
				MoveMessage(CurX,CurY,Message,0,-1);
			#80:
				MoveMessage(Curx,CurY,Message,0,1);
		end;
	end;
	clrscr;
end.
