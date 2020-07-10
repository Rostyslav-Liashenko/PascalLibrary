Program MatchPattern;

function MatchIdx(var str, pat:string; idxs, idxp:integer):boolean;
var
	i:integer;
begin
	while true do
	begin
		if idxp > length(pat) then
		begin
			MatchIdx:=idxs > length(str);
			exit
		end;
		if pat[idxp] = '*' then
		begin
			for i:=0 to Length(str)-idxs+1 do
				if MatchIdx(str,pat,idxs+i,idxp+1) then
				begin
					MatchIdx:=true;
					exit
				end;
				MatchIdx :=false;
				exit
		end;
		if (idxs > length(str)) or 
			((str[idxs] <> pat[idxp]) and (pat[idxp] <> '?')) then
		begin
			MatchIdx:=false;
			exit
		end;
		idxs:=idxs+1;
		idxp:=idxp+1;
	end
end;

function Match(var str, pat:string):boolean;
begin
	Match:=MatchIdx(str,pat,1,1);
end;

Var
	s1,s2:string;
begin
	Readln(s1);
	Readln(s2);
	if Match(s1,s2) then
		Writeln('yes')
	else
		Writeln('no');
end.
