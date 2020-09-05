unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  a,b,sum:real;
begin
     a:=StrToFloat(Edit1.Text);
     b:=StrToFloat(Edit2.Text);
     sum := a + b;
    Label4.Caption:=FloatToStr(sum);
end;

procedure TForm1.FormClick(Sender: TObject);
begin
  ShowMessage('Create by Liashenko Rostyslav');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;



end.

