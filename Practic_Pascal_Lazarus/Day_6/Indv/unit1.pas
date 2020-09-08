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
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.RadioGroup1Click(Sender: TObject);
var n:integer;
    str:string;
begin
  if (edit1.text = '') then
  begin
    RadioGroup1.ItemIndex:=-1;
    ShowMessage('Please input the number in area Length');
    exit;
  end;
  n:=RadioGroup1.ItemIndex;
  case n of
       0:begin
         Label3.Caption:=FloatToStr(StrTofloat(Edit1.Text) * 1000);
         str:=' KL ';
       end;
       1:begin
              Label3.Caption:=FloatToStr(StrTofloat(Edit1.Text));
              str:=' M ';
       end;
       2:begin
         Label3.Caption:=FloatToStr(StrTofloat(Edit1.Text) / 1000);
         str:=' ML ';
       end;
       3:begin
         Label3.Caption:=FloatToStr(StrTofloat(Edit1.Text) / 100);
         str:=' Cen ';
       end;
       4:begin
         Label3.Caption:=FloatToStr(StrToFloat(edit1.Text) / 10);
         str := ' Dec ';
       end;
  else
       showMessage('Please input the correct data');
  end;
  if  not (StrToInt(edit1.text) = 0) then
      Memo1.Lines.add(Edit1.text + str + ' = ' + Label3.Caption + 'M');
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('Create by Liashenko Rostyslav');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
end;

end.

