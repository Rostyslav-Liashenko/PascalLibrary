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
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    {my procedure and function}
    function countDiv(x:integer):integer;
    procedure ShowDiv(n:integer);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ShowDiv(n:integer);
Var i:integer;
begin
  i:=2;
  Memo2.Lines.add(IntTOstr(n));
  Memo2.Lines.add('Has Divided');
  repeat
        if n mod i = 0 then
        begin
          Memo2.Lines.add(IntTOStr(i));
        end;
  INc(i);
  until i > n - 1;
  Memo2.Lines.add('--------');
end;

function TForm1.countDiv(x:integer):integer;
var count,i:integer;
begin
  count:=0;
  i:=2;
  repeat
        if x mod i = 0 then
        begin
           Inc(count);
        end;
        Inc(i);
  until i > x - 1;
  CountDiv:=count;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  edit1.clear;
  edit2.clear;
  edit3.clear;
  Memo1.Clear;
  Memo2.Clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.MessageBox('Create By Liasenko Rostyslav','Author');
end;

procedure TForm1.Button1Click(Sender: TObject);
var n,n1,nk:integer;
    count:integer;
begin
     n:=StrToInt(edit1.text);
     n1:=StrToInt(edit2.text);
     nk:=StrToInt(edit3.text);
     count:=0;
    repeat
          if countDiv(n1) = n then
          begin
            ShowDiv(n1);
            Memo1.Lines.add(IntToStr(n1));
            Inc(count);
          end;
    Inc(n1);
    until n1 > nk - 1 ;
    Memo1.Lines.add('all number = '+ IntTOStr(count));
end;

end.

