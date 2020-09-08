unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Image10: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    {my procedure and funtion}
    procedure ShowPlayer;
    procedure BasicLogic(nom_pic:integer);
    procedure CheckWinner;
    procedure Prepare;
  private

  public

  end;

var
  Form1: TForm1;
  player:integer; {0 - first player, 1 - second player}
  CroosOrCircle:array[1..10] of integer; {2 = circle, 1 = cross}
implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Prepare;
var i:integer;
begin
  player:=0;
  ShowPlayer;
  for i:=2 to 10 do
  begin
    TImage(FindComponent('Image'+IntToStr(i))).Picture.Clear;
    TImage(FindComponent('Image'+IntToStr(i))).Enabled:=true;
    CroosOrCircle[i]:=Random(29000)+1000;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   Prepare;
   Label3.Caption:='';
   Label5.Caption:='';
end;

procedure TForm1.ShowPlayer;
begin
  if player = 0 then
       Label3.caption:='First'
  else
       Label3.caption:='Second';
end;

procedure TForm1.CheckWinner;
begin
   if ((CroosOrCircle[2] = CroosOrCircle[3]) and (CroosOrCircle[3] = CroosOrCircle[4]))
   or ((CroosOrCircle[5] = CroosOrCircle[6]) and (CroosOrCircle[6] = CroosOrCircle[7]))
   or ((CroosOrCircle[8] = CroosOrCircle[9]) and (CroosOrCircle[9] = CroosOrCircle[10]))
   or ((CroosOrCircle[2] = CroosOrCircle[5]) and (CroosOrCircle[5] = CroosOrCircle[8]))
   or ((CroosOrCircle[3] = CroosOrCircle[6]) and (CroosOrCircle[6] = CroosOrCircle[9]))
   or ((CroosOrCircle[4] = CroosOrCircle[7]) and (CroosOrCircle[7] = CroosOrCircle[10]))
   or ((CroosOrCircle[2] = CroosOrCircle[6]) and (CroosOrCircle[6] = CroosOrCircle[10]))
   or ((CroosOrCircle[4] = CroosOrCircle[6]) and (CroosOrCircle[6] = CroosOrCircle[8]))
   then
   begin
      Label5.Caption:=Label3.Caption;
      ShowMessage('Game Over!!!');
   end
end;

procedure TForm1.BasicLogic(nom_pic:integer);
begin
   ShowPlayer;
   if player = 0 then
   begin
        TImage(FindComponent('Image'+ IntToStr(nom_pic))).Picture.LoadFromFile('new_x.png');
        CroosOrCircle[nom_pic]:=1;
        TImage(FindComponent('Image'+IntToStr(nom_pic))).Enabled:=false;
        ShowPlayer;
        CheckWinner;
        Inc(player);
   end
   else
   begin
       TImage(FindComponent('Image'+ IntToStr(nom_pic))).Picture.LoadFromFile('new_o.png');
       CroosOrCircle[nom_pic]:=2;
       TImage(FindComponent('Image'+IntToStr(nom_pic))).Enabled:=false;
       showPlayer;
       CheckWinner;
       Dec(player);
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    Randomize;
    Button1Click(Sender);
end;


procedure TForm1.Image2Click(Sender: TObject);
begin
  BasicLogic(2);
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  BasicLogic(3);
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  BasicLogic(4);
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  BasicLogic(5);
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  BasicLogic(6);
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
  BasicLogic(7);
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
   BasicLogic(8);
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
   BasicLogic(9);

end;

procedure TForm1.Image10Click(Sender: TObject);
begin
   BasicLogic(10);
end;

end.

