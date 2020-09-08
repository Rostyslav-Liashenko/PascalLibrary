unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

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
    RG1: TRadioGroup;
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
var a,b,c:real;
begin
     a:=StrToFloat(edit1.text);
     b:=StrToFloat(edit2.text);
     case RG1.ItemIndex of
          0:c:=a+b;
          1:c:=a-b;
          2:c:=a*b;
          3:
            begin
                 if b = 0 then
                    showMessage('You cannot divided by zero')
                 else
                   c:= a / b;
            end;
     end;
     edit3.text:=FloatToStr(c);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.Clear;
  edit2.Clear;
  edit3.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('Creaty by Liashenko Rostyslav');
end;

end.

