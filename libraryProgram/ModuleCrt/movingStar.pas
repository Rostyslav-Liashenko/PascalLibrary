Program MovingStar;
uses crt;
const
	DelayDuration = 100;
type 
	star = record 
		CurX,CurY,dx,dy:integer;
	end;

procedure ShowStar(var s:star);
begin
	GotoXY(s.Curx,s.CurY);
	write('*');
	GotoXY(1,1);
end;

procedure HideStar(var s:star);
begin
	GotoXY(s.CurX,s.CurY);
	Write(' ');
	GotoXy(1,1);
end;

procedure MoveStar(var s:star);
begin
	HideStar(s);
	s.CurX :=s.CurX + s.dx;
	if s.CurX > ScreenWidth then
		s.CurX :=1
	else
	if s.CurX < 1 then
		s.CurX :=ScreenWidth;
	s.CurY:= s.Cury + s.dy;
	if s.CurY > ScreenHeight then
		s.CurY :=1
	else
	if s.CurY < 1 then
		s.CurY :=ScreenHeight;
	ShowStar(s);
end;

procedure SetDirection(var s:star; dx,dy:integer);
begin
	s.dx:=dx;
	s.dy:=dy;
end;

procedure HandleArrowkey(var s:star; extcode:char);
begin
	case extcode of 
		#75:SetDirection(s,-1,0);
		#77:SetDirection(s,1,0);
		#72:SetDirection(s,0,-1);
		#80:SetDirection(s,0,1);
	end;
end;

var	
	s:star;
	ch:char;
begin
	clrscr;
	s.CurX := ScreenWidth div 2;
	s.CurY := ScreenHeight div 2;
	s.dx := 0;
	s.dy := 0;
	ShowStar(s);
	while true do
	begin
		if not KeyPressed then
		begin
			MoveStar(s);
			delay(DelayDuration);
			continue;
		end;
		ch:=ReadKey;
		case ch of
		#0:	begin
		   	ch:=ReadKey;
			HandleArrowKey(s,ch);
		end;
		' ': SetDirection(s,0,0);
		#27:break;
	end
	end;
	clrscr;
end.




