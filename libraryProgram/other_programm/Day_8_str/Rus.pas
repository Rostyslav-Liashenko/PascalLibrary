Var a:string;
    i,j:integer;

function UpRus(s:char):char;
const deltaa = ord('а') - ord('А');
      deltaP = ord('р') - ord('Р');
begin
  case s of 
    'a'..'z':S:=UPcase(s);
    'а'..'п':S:=Chr(ord(s) - deltaa);
    'р'..'я':s:=Chr(ord(s) - deltaP);
  end;
  UpRus:=s;
end;

function LowRus(ch:char):char;  
begin
  case ch of 
  'A'..'Z':LowRus:=chr(ord(ch) + 32);
  'А'..'Я':LowRus:=chr(ord(ch) + 32);
  else
    LowRus:=ch;
  end;
end;

begin
  Write('Введи рядок для перетворення в верхній:');
  Readln(a);
  for i:=1 to Length(a) do
    case ord(a[i]) of 
      65..90, 128..159:Write(LowRus(a[i]));
      97..122, 160..175, 224..246:Write(UpRus(a[i]));
    end;
end.
