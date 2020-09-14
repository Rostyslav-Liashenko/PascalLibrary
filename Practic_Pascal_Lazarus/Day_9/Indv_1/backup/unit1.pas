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

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.MessageBox('Create by Liashenko Rostyslav','Author');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.clear;
  edit2.clear;
  edit3.clear;
  Memo1.clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var  n1,nk,step:real;
     tmp:real; {for checked function}
begin
    n1:=StrToFloat(edit1.text);
    nk:=StrToFloat(edit2.text);
    step:=StrToFloat(edit3.text);
    repeat
          if n1 <=-1 then
          begin
            tmp:=n1-exp(1/3 *ln(abs(sin(sqrt(abs(n1))))));
            Memo1.Lines.add('n1 = '+ FloatTostr(n1)+'   '+FloatToStrf(tmp,ffFixed,10,5));
          end
          else
          begin
            if n1 >= 0 then
            begin
                 if  (n1+1 < 0) or (n1 + exp(n1) * sqrt(n1 + 1) < 0) then
                 begin
                      Memo1.Lines.add('n1 = '+ FloatTostr(n1)+ '   Function not declared');
                 end
                 else
                 begin
                   tmp:=exp(1/4 * ln(n1 + exp(n1) * sqrt(n1 + 1))) + PI;
                     Memo1.Lines.add('n1 = '+FloatTostr(n1)+'    '+ FloatToStrf(tmp,ffFixed,10,5));
                 end;
            end
            else
            begin
               tmp:=sin(sqr(ln(abs(n1 * n1 *n1 + 1))));
               Memo1.Lines.add('n1 = '+FloatTostr(n1)+'    '+FloatTOStrF(tmp,ffFixed,10,5));
            end;
          end;
          n1:=n1 + step;
    until n1 > nk ;
end;

end.

