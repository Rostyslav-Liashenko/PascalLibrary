unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var a,b,h,y,x:real;
begin
  a:=StrToFloat(Edit1.text);
  b:=StrToFloat(Edit2.text);
  h:=StrToFloat(Edit3.text);
  x:=a;
  while x <= b do
  begin
    y:=exp(x)- exp(-x)-2;
    Memo1.Lines.Add('x= '+floatToStr(x)+'              y= '+FloatToStrF(y,ffFixed,8,4));
    x:=x+h;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.clear;
  edit2.clear;
  edit3.clear;
  Memo1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.MessageBox('Create by Liashenko Rostyslav','Author');
end;

end.

