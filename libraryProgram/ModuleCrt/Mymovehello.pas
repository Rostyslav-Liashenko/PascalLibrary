Program MovingHello;
uses crt;
const
	Message = 'Hello, world!';
	EndMessage = 'You lose';
procedure ShowMessage(x,y:integer; msg:string);
begin
	GotoXY(x,y);
	write(msg);
	GotoXy(1,1);
end;

procedure MoveMessage(var x,y:integer; msg:string; dx,dy:integer);
begin
	clrscr;
	x:=x + dx;
	y:=y + dy;
	ShowMessage(x,y,msg)
end;

procedure PrintPlayText(var x,y:integer; message:string);
begin
	clrscr;
	x :=(ScreenWidth - length(Message)) div 2;
	y :=ScreenHeight div 2;
	ShowMessage(x,y,Message);
end;

var 
	Curx,CurY:integer;
	ch:char;
begin
	clrscr;
	PrintPlayText(CurX,CurY,Message);
	while true do
	begin
		if (CurX <= 0) or (CurY <= 0) or (CurX > ScreenWidth) or (CurY > ScreenHeight) then
		begin
			PrintPlayText(CurX,CurY,EndMessage);
			delay(4000);
			break;
		end;
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
