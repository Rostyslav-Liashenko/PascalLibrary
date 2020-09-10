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
    Edit4: TEdit;
    Edit5: TEdit;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    RadioGroup1: TRadioGroup;
    Shape1: TShape;
    Shape2: TShape;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
Var y,x1,xn,deltaX,a,b,tmp,tmp2:real;
begin
   x1:=StrToFloat(edit3.text);
   xn:=StrToFloat(edit4.text);
   deltaX:=StrToFloat(edit5.text);;
   a:=StrToFloat(edit1.text); ;
   b:=StrToFloat(edit2.text);
   while (x1 <= xn) do
   begin
        tmp:= a * x1 *x1 + b;
        tmp2:=a * x1 + 1;
        if (tmp <= 0) or (tmp2 = 0) then
        begin
            Memo1.Lines.add('Funtion not declared');
        end;
        y:=(ln(tmp)) / (tmp2);
        Memo1.Lines.add('y = ' + FloatToStrF(y,ffFixed,8,4));
        x1:=x1+deltaX;
   end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.MessageBox('Create By Liashenko Rostyslav','Author');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  RadioGroup1Click(Sender);
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
var n:integer;
begin
  n:=RadioGroup1.ItemIndex;
  case n of
       0:begin
              RadioGroup1.Font.Color:=$00A6A617;
              Button1.Font.Color:=$0004CA04;
              Button2.Font.Color:=$0004CA04;
              Button3.Font.Color:=$0004CA04;
              Memo1.Font.Color:=$0004CA04;
              Form1.Color:=$00373832;
              Shape1.Visible:=False;
              Shape2.Visible:=False;
              Memo1.Color:=clDefault;
       end;
       1:begin
              Form1.Color:=clWhite;
              Memo1.Color:=clWhite;
              RadioGroup1.Color:=ClWhite;
              RadioGroup1.Font.Color:=$000BC70B;
              Button1.Font.Color:=$00DD34C3;
              Button2.Font.Color:=$00DD34C3;
              Button3.Font.Color:=$00DD34C3;
              Memo1.Font.Color:=$00F44040;
              Shape1.Visible:=True;
              Shape2.Visible:=True;
       end;
  end;
end;

end.

