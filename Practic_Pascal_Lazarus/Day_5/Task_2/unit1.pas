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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShowMessage('Create by Liashenko Rostyslav');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.clear;
  Label3.Caption:='';
end;

procedure TForm1.Button1Click(Sender: TObject);
var price:real;
begin
   price:=StrToFloat(edit1.text);
   if (price <= 0) then
   begin
     ShowMessage('Not Correct data!!!');
   end;
   if (price > 1000) then
   begin
     price:=price - (price * 10 / 100);
   end;
   Label3.Caption:=FloatToStr(price);
end;

end.

