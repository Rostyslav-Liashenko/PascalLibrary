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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
var a,b,c,d,x1,x2,y1,y2:real;
begin
     a:=StrTOFloat(edit1.Text);
     b:=StrTOFloat(edit2.Text);
     c:=StrTOFloat(edit3.Text);
     d:=sqr(b) - 4 * a * c;
     y1:=-b/(2*a);
     y2:=sqrt(abs(d))/(2 *a);
     if d>= 0
     then
     begin
       x1:=y1+y2;
       x2:=y1-y2;
       edit4.Text:=floatToStr(x1);
       edit5.Text:=FloatToStr(x2);
     end
     else
     begin
       edit4.Text:=floatToStr(y1)+'+i'+floatToStr(y2);
       edit5.text:=floattoStr(y1)+'-i'+floattostr(y2);
     end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
   Edit1.Text:='';
   Edit2.Text:='';
   Edit3.Text:='';
   Edit4.Text:='';
   Edit5.Text:='';
end;

end.

