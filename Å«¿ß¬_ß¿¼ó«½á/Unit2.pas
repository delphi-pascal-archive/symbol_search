unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    StaticText1: TStaticText;
    procedure Panel49Click(Sender: TObject);
    procedure Panel48Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel50Click(Sender: TObject);
    procedure Panel51Click(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  
procedure zasP(n:byte);
procedure zas_nn;
procedure zasP1(n:byte);

var
  Form2: TForm2;
const
ckb:array[1..4,1..47] of char=
(('`','1','2','3','4','5','6','7','8','9','0','-','=','\',
'q','w','e','r','t','y','u','i','o','p','[',']',
'a','s','d','f','g','h','j','k','l',';','''',
'z','x','c','v','b','n','m',',','.','/'),
('~','!','@','#','$','%','^','&','*','(',')','_','+','|',
'Q','W','E','R','T','Y','U','I','O','P','{','}',
'A','S','D','F','G','H','J','K','L',':','"',
'Z','X','C','V','B','N','M','<','>','?'),
('ё','1','2','3','4','5','6','7','8','9','0','-','=','\',
'й','ц','у','к','е','н','г','ш','щ','з','х','ъ',
'ф','ы','в','а','п','р','о','л','д','ж','э',
'я','ч','с','м','и','т','ь','б','ю','.'),
('Ё','!','"','№',';','%',':','?','*','(',')','_','+','/',
'Й','Ц','У','К','Е','Н','Г','Ш','Щ','З','Х','Ъ',
'Ф','Ы','В','А','П','Р','О','Л','Д','Ж','Э',
'Я','Ч','С','М','И','Т','Ь','Б','Ю',','));

var nn:byte=1;

implementation

uses Unit1;

{$R *.dfm}


procedure zasP(n:byte);
var i:integer;
begin
for i:=1 to 47 do
with form2 do
begin
TPanel(findcomponent('Panel'+inttostr(i))).Caption:=ckb[n,i];
end;
end;

procedure zasP1(n:byte);
begin
if (n=1) or  (n=3) then
form2.Panel50.Caption:='Нижний'
else
form2.Panel50.Caption:='Верхний';
if (n=1) or  (n=2) then
form2.Panel51.Caption:='Латинский'
else
form2.Panel51.Caption:='Русский';
end;

procedure zas_nn;
begin
nn:=1;
if form2.Panel50.Caption<>'Нижний' then nn:=2;
if form2.Panel51.Caption<>'Латинский' then inc(nn,2);
end;

procedure TForm2.Panel49Click(Sender: TObject);
begin
 if panel51.Caption='Латинский' then
 panel51.Caption:='Русский'
 else
 panel51.Caption:='Латинский';
 zas_nn;
 zasP(nn);
end;

procedure TForm2.Panel48Click(Sender: TObject);
begin
 if panel50.Caption='Нижний' then
 panel50.Caption:='Верхний'
 else
 panel50.Caption:='Нижний';
 zas_nn;
 zasP(nn);
end;

procedure TForm2.FormShow(Sender: TObject);
begin
zas_nn;
zasP(nn);
end;

procedure TForm2.Panel50Click(Sender: TObject);
begin
 Panel48Click(self);
end;

procedure TForm2.Panel51Click(Sender: TObject);
begin
Panel49Click(self);
end;

procedure TForm2.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 (sender as TPanel).Font:=form1.label7.font;
end;

procedure TForm2.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 (sender as TPanel).Font:=form1.label1.font;
end;

end.
