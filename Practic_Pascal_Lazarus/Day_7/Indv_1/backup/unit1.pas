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

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.clear;
  Label3.Caption:='';
  Memo1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Application.MessageBox('Creaty By Liashenko Rostyslav', 'Author');
end;

procedure TForm1.Button1Click(Sender: TObject);
Var a,sum,tsum:real;
  n:integer;
begin
   if (Edit1.Text = '') then
   begin
        Application.MessageBox('Fill the input','Error');
        exit;
   end;
   a:=StrToFloat(edit1.text);
   n:=1;
   sum:=0;
   while (A > sum) do
   begin
        sum := sum + (1/n);
        if A < sum then
        begin
             sum:=sum - (1/n);
             Dec(n);
             break;
        end;
        Memo1.Lines.add(FloatToStrF(sum,ffFixed,8,3) + ' + ');
        Inc(n);
   end;
   Label3.Caption:=IntTOstr(n);
   Memo1.Lines.add('---------------------');
   Memo1.Lines.add('N = ' + IntToStr(n));
   Memo1.Lines.add('Sum = ' + FloatToStrf(sum,ffFixed,8,3));
end;

end.

