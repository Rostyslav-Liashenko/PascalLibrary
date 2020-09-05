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
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
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
var x,y:real;
    x1,y1,x2,y2:real;
begin
  x:=strtoFloat(edit1.text);
  y:=strtoFloat(edit2.text);
  x1:=strToFloat(edit3.text);
  y1:=strToFloat(edit4.text);
  x2:=strToFloat(edit5.text);
  y2:=strToFloat(edit6.Text);
  if (x >= x1) and (x <= x2) and (y >= y1) and (y <= y2) then
  begin
      checkbox1.state:= cbchecked;
      checkbox2.state:= cbunchecked;
  end
  else
  begin
      checkbox2.state:=cbchecked;
      checkbox1.state:= cbunchecked;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.clear;
  edit2.clear;
  edit3.clear;
  edit4.clear;
  edit5.clear;
  edit1.setfocus;
  checkbox1.state:=cbunchecked;
  checkbox2.state:=cbunchecked;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShowMessage('Create by Liashenko Rostyslav');
end;

end.

