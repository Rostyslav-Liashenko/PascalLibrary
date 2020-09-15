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
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  words:array[1..100] of String;
  n:integer;
  i:integer;
implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.Button1Click(Sender: TObject);
begin
  n:=StrToInt(Edit1.text);
  for i:=1 to n do
  begin
      words[i]:=InputBox('Input the words','word','0');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo2.clear;
  for i:=1 to 5 do
      Memo2.Lines.add(words[i]);
end;

procedure TForm1.Button3Click(Sender: TObject);
Var
  Posl:array[1..100] of integer;
  n,i,sum:integer;
begin
   N:=Memo1.Lines.Count;
   for i:=1 to n do
       Posl[i]:=StrToINt(Memo1.Lines[i-1]);
   Sum:=0;
   for i:=1 to n do
       sum:=Sum + Posl[i];
   Label5.Caption:='Summa : ' + IntTOstr(sum);
end;

procedure TForm1.Button4Click(Sender: TObject);
var i:integer;
    flag:boolean;
begin
  flag :=false;
  for i:=0 to Memo3.Lines.Count - 1 do
      begin
           if Memo3.Lines[i] = edit2.text then
           begin
              Label6.Caption:='find in the row ' + IntTostr(i + 1);
              flag:=true;
           end;
      end;
  if not flag then
     Label6.Caption:='Not found';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Application.MessageBox('Create by Liashenko Rostyslav','Author');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  memo1.clear;
  memo2.clear;
  memo3.clear;
  edit2.clear;
  edit1.clear;
  Label5.Caption:='Summa';
  Label6.Caption:='Find in the row';
end;

end.

