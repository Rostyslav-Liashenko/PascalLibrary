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
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
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
  Eng_words,Ukr_words:array[0..100] of String;
  flag:boolean;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var i:integer;
begin
     for i:=0 to Memo1.Lines.Count - 1 do
     begin
       Ukr_words[i]:=Memo1.Lines[i];
       Eng_words[i]:=Memo2.Lines[i];
     end;
     flag:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i:integer;
    S:string;
begin
     if not flag then
     begin
       Application.MessageBox('Arrays not fill','error');
       exit;
     end;
     s:=Edit1.text;
     i:=-1;
     Repeat
       i:= i + 1;
     until Ukr_words[i] = S;
     Edit2.text:=Eng_words[i];
end;

procedure TForm1.Button3Click(Sender: TObject);
var i:integer;
    s:string;
begin
  if not flag then
     begin
       Application.MessageBox('Arrays not fill','error');
       exit;
     end;
  s:=Edit3.text;
  i:=-1;
  repeat
    i:=i+1;
  until Eng_words[i] = S;
  Edit4.text:=Ukr_words[i];
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Application.MessageBox('Create by Liashenko Rostyslav','Author');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  edit1.clear;
  edit2.clear;
  edit3.clear;
  edit4.clear;
end;

end.

