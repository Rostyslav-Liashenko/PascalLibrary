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
    Button4: TButton;
    Button5: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Posl:array[1..100] of integer;
  n:integer;
  k:integer;
  i:integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  n:=strToint(edit1.text);
  Randomize;
  ListBox1.Clear;
  for i:=1 to N do
  begin
    Posl[i]:=Random(20);
    ListBox1.items.Add(intToStr(Posl[i]));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  k:=0;
  for i:=1 to N do
  if (Posl[i] mod 2 = 0) and (i mod 2 = 0) then k:=k+1;
  if k = 0 then
     edit2.text:= 'Numbers not found'
  else
      edit2.text:=INtTOStr(k);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  edit1.clear;
  edit2.clear;
  Memo1.Clear;
  ListBox1.clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Application.MessageBox('Create by Liashenko Rostyslav','Author');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  for i:=1 to n do
  begin
    if i mod 2 <> 0 then
    begin
      Memo1.Lines.add(IntToStr(Posl[i]));
    end;
  end;
end;


end.

