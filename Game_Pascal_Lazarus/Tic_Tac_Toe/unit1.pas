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
    {my procedure and funtion}
    procedure ShowPlayer;
  private

  public

  end;

var
  Form1: TForm1;
  player:integer; {0 - first player, 1 - second player}
implementation

{$R *.lfm}

{ TForm1 }

procedure ShowPlayer;
begin
  if player = 0 then
       Label3.caption:='First'
  else
       Label3.caption:='Second';
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
begin
  player:=0;
  for i:=1 to 9 do
  begin
    TImage(FindComponent('Image'+IntToStr(i))).Enabled:=true;
  end;
end;




end.

