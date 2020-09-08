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
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ListBox1Click(Sender: TObject);
var n:integer;
begin
  n:=ListBox1.ItemIndex;
  Memo1.Clear;
  case n of
  0:Memo1.lines.add('Monday');
  1:Memo1.lines.add('every day except Sunday');
  2:Memo1.lines.add('Thursday');
  3:Memo1.lines.add('Thursday');
  4:Memo1.lines.add('Friday');
  5:Memo1.lines.add('Saturday');
  6:Memo1.lines.add('Thursday');
  7:Memo1.lines.add('Friday');
  8:Memo1.lines.add('Friday');
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage('Create by Liashenko Rostyslav');
end;

end.

