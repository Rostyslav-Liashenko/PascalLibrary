unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.Button1Click(Sender: TObject);
Var
  a,b,c,alfa,betta,gamma,S,r:real;
begin
 a:=StrToFloat(Edit1.Text);
 b:=StrToFloat(Edit2.Text);
 c:=StrToFloat(Edit3.Text);
 r:=(a+b+c) / 2;
 S:=sqrt(r*(r-a)*(r-b)*(r-c));
 alfa:=arccos((sqr(b) + sqr(c) - sqr(a))/ 2/ b / c);
 betta:=arcsin(b/a*sin(alfa));
 gamma:=pi-(alfa+betta);
 alfa:=alfa*180/pi;
 betta:=betta*180/pi;
 gamma:=gamma*180/pi;
 Label9.Caption:=FloatToStrF(S,ffFixed,5,2);
 Label10.Caption:=FloatToStrF((a+b+c),ffFixed,5,2);
 Label11.Caption:=FloatToStrF(alfa,ffFixed,3,0);
 Label12.Caption:=FloatToStrF(betta,ffFixed,3,0);
 Label13.Caption:=FloatToStrF(gamma,ffFixed,3,0);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage('Create bu Liashenko Rostyslav');
end;



end.

