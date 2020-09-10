unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure EndGame(s:string);
  private

  public

  end;

var
  Form1: TForm1;
  PosX,PosY,VelX,VelY:Single;
implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.EndGame(s:string);
begin
    Shape1.Top:=200;
    Shape1.Left:=200;
    Velx:=0;
    Vely:=0;
    Label1.Caption:='Winner ' + s;
    Button1.Enabled:=true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  PosX:=150;
  PosY:=50;
  VelX:=1;
  VelY:=2;
  Button1.Enabled:=false;
  Randomize;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FormCreate(sender);
  Label1.Caption:='';
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Shape2.Top:=Mouse.CursorPos.Y - Form1.ClientOrigin.Y;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  Overlay:TRect;
begin
  PosX:=PosX + VelX;
  PosY:=PosY + VelY;

  if PosX > Clientwidth - Shape1.Width then
     VelX:=-VelX;
  if PosY > ClientHeight - Shape1.Height then
     VelY:=-VelY;
  if PosX < 0 then
     VelX:=-Velx;
  if PosY < 0 then
     VelY:=-VelY;

  Shape1.left:=round(PosX);
  Shape1.Top:=round(Posy);
  if InterSectRect(Overlay, Shape2.BoundsRect, Shape1.BoundsRect) then
  begin
       ShowMessage(FloatToStr(Velx));
       ShowMessage(FloatTOStr(VelY));
       VelX:=-VelX - Random(5);
       VelY:=-VelY - Random(5);
  end;
  if (Shape1.Left <= 0) then
     begin
          EndGame('Player');
     end;
  if (Shape1.Left > Shape2.Left) then
     begin
          EndGame('Computer');
     end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
Var Overlay:TRect;
begin
  if Shape3.Top > ClientHeight - Shape3.Height - 40 then
     Shape3.Top:=Shape3.Top
     else
     begin
       if Shape1.Top > Shape3.Top then
          Shape3.Top:=Shape1.Top + Shape3.Width;
     end;
  if Shape1.Top < Shape3.Top then
     Shape3.Top:=Shape1.Top - Shape3.Width;
  if InterSectRect(Overlay,Shape3.BoundsRect, Shape1.BoundsRect) then
  begin
    VelX:=-VelX + Random(5);
    VelY:=-VelY + Random(5);
  end;
end;

end.

