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
     Memo1.Clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i,j,k:integer;
    count:integer;
begin
   count:=0;
   for i:=1 to 9 do
   begin
      for j:=0 to 9 do
      begin
         for k:=0 to 9 do
         begin
            if i = j - k then
            begin
              Memo1.Lines.add(IntToStr(i)+IntTOStr(j)+IntTOStr(k));
              Inc(count);
            end;
         end;
      end;
   end;
   Memo1.Lines.add('All numbers = '+IntTOstr(count));
end;

end.

