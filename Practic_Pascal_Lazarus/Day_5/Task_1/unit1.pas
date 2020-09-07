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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
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
  edit2.clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var r1,r2:real;
  tmp:integer;
begin
  r1:=StrToFloat(edit1.Text);
  r2:=StrToFloat(edit2.Text);
  if (radioButton1.Checked) then
  begin
       tmp:=0;
  end
  else
  begin
       tmp:=1;
  end;
  case tmp of
       0: Label4.Caption:=FloatToStr(r1+r2);
       1: Label4.Caption:=FloatToStr(1/(1/r1)+(1/r2));
  end;
end;

end.

