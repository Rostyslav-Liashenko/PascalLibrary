unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
  private

  public

  end;

var
  Form1: TForm1;
  player:integer; {0 - first player, 1 - second player}
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ShowPlayer;
begin
  if player = 0 then
       Label3.caption:='First'
  else
       Label3.caption:='Second';
end;

procedure TForm1.BasicLogic(nom_pic:integer);
begin
   if player = 0 then
   begin
        TImage(FindComponent('Image'+ IntToStr(nom_pic))).Picture.LoadFromFile('new_x.png');
        TImage(FindComponent('Image'+IntToStr(nom_pic))).Enabled:=false;
        ShowPlayer;
        Inc(player);
   end
   else
   begin
       TImage(FindComponent('Image'+ IntToStr(nom_pic))).Picture.LoadFromFile('new_o.png');
       TImage(FindComponent('Image'+IntToStr(nom_pic))).Enabled:=false;
       showPlayer;
       Dec(player)
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
begin
  player:=0;
  ShowPlayer;
  for i:=2 to 10 do
  begin
    TImage(FindComponent('Image'+IntToStr(i))).Picture.Clear;
    TImage(FindComponent('Image'+IntToStr(i))).Enabled:=true;
  end;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  BasicLogic(2);
  ShowPlayer;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  BasicLogic(3);
  ShowPlayer;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  BasicLogic(4);
  ShowPlayer;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  BasicLogic(5);
  ShowPlayer;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  BasicLogic(6);
  ShowPlayer;
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
  BasicLogic(7);
  ShowPlayer;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
   BasicLogic(8);
   ShowPlayer;
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
   BasicLogic(9);
   ShowPlayer;
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
   BasicLogic(10);
   ShowPlayer;
end;

end.

