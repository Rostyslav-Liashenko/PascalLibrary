unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var i,amp,x01,y01,x02,y02,imax,dt1,dt2,func:integer;
begin
     Canvas.Pen.Color:=clRed;
     Canvas.Pen.Width:= 5;
     imax:=100;
     dt1:=2;
     dt2:=2;
     amp:=70;
     x01:=20;
     x02:=20;
     y01:=20 + amp;
     y02:=y01 + 2 * amp + 40;
     Canvas.TextOut(0,0,'Graphic Pixel');
     Canvas.MoveTo(x01,y01);
     Canvas.LineTo(x01+imax*dt1,y01);
     Canvas.MoveTo(x01,y01+amp);
     Canvas.LineTo(x01,y01-amp);
     for i:=0 to imax do
     begin
       func:=-round(amp*i*i);
       Canvas.Pixels[x01+i*dt1,y01 + func]:=clBlack;
     end;

     Canvas.TextOut(0,y02-amp-20,'Graphic LineTo');
     Canvas.MoveTo(x02,y02);
     Canvas.LineTo(x02+imax*dt1,y02);
     Canvas.MoveTo(x02,y02+amp);
     Canvas.LineTo(x02,y02-amp);
     for i:=0 to imax do
     begin
       func:= -round(amp*sin(2 * pi/imax*i*dt2));
       Canvas.LineTo(x02 + i * dt1,y02+func);
     end;

end;

end.

