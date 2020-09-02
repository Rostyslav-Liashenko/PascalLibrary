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
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
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
begin
  Panel1.Color:=clRed;
  Panel2.Color:=clWhite;
  Panel3.Color:=clWhite;
  Panel1.Caption:='Stop';
  Panel1.Font.Color:=clWhite;
  Panel1.Font.Size:=12;
  Panel1.Font.Style:=[fsBold];
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Panel1.Color:=clWhite;
  Panel2.Color:=clYellow;
  Panel3.Color:=clWhite;
  Panel2.Caption:='Attention';
  Panel2.Font.Color:=clWhite;
  Panel2.Font.Style:=[fsBold];
  Panel2.Font.Size:=12;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Panel1.Color:=clWhite;
  Panel2.Color:=clWhite;
  Panel3.Color:=clGreen;
  Panel3.Caption:='GO';
  Panel3.Font.Color:=clWhite;
  Panel3.Font.Style:=[fsBold];
  Panel3.Font.Size:=12;
end;

end.

