unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    UpDown1: TUpDown;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FontDialog1: TFontDialog;
    Button3: TButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    UpDown2: TUpDown;
    Edit2: TEdit;
    Label8: TLabel;
    ComboBox1: TComboBox;
    StaticText1: TStaticText;
    Button4: TButton;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure UpDown1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

var sc:integer=1;

procedure Delay_(msecs : Longint);
var
   FirstTick : longint;
begin
     FirstTick:=GetTickCount;
     repeat
       Application.ProcessMessages;
       {Ù˚† ™˛Û˛ ¢™˛Òv ˝ı "˜Úı∏¯™π" Windows}
     until GetTickCount-FirstTick >= msecs;
end;

function _2(i:integer):string;
begin
result:='';
case i of
1:result:='DEFAULT_CHARSET';//	1	Font is chosen based solely on Name and Size. If the described font is not available on the system, Windows will substitute another font.
2:result:='SYMBOL_CHARSET';//	2	Standard symbol set.
77:result:='MAC_CHARSET';//	77	Macintosh characters. Not available on NT 3.51.
128:result:='SHIFTJIS_CHARSET';//	128	Japanese shift-JIS characters.
129:result:='HANGEUL_CHARSET';//	129	Korean characters (Wansung).
130:result:='JOHAB_CHARSET';//	130	Korean characters (Johab). Not available on NT 3.51

134:result:='GB2312_CHARSET';//	134	Simplified Chinese characters (mainland china).
136:result:='CHINESEBIG5_CHARSET';//	136	Traditional Chinese characters (Taiwanese).
161:result:='GREEK_CHARSET';//	161	Greek characters. Not available on NT 3.51.
162:result:='TURKISH_CHARSET';//	162	Turkish characters. Not available on NT 3.51
163:result:='VIETNAMESE_CHARSET';//	163	Vietnamese characters. Not available on NT 3.51.
177:result:='HEBREW_CHARSET';//	177	Hebrew characters. Not available on NT 3.51
178:result:='ARABIC_CHARSET';//	178	Arabic characters. Not available on NT 3.51

186:result:='BALTIC_CHARSET';//	186	Baltic characters. Not available on NT 3.51.
204:result:='RUSSIAN_CHARSET';//	204	Cyrillic characters. Not available on NT 3.51.
222:result:='THAI_CHARSET';//	222	Thai characters. Not available on NT 3.51
238:result:='EASTEUROPE_CHARSET';//	238	Includes diacritical marks for eastern european countries. Not available on NT 3.51.
255:result:='OEM_CHARSET';//	255	Depends on the codepage of the operating system.
end;
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var i,j:integer;
begin
 label1.Caption:=chr(Updown1.Position);
 label7.Caption:=label1.Caption;
 if form2.Showing then
 begin
  for i:=1 to 4 do
  for j:=1 to 47 do
  if label1.Caption=ckb[i,j] then
  begin
   with form2 do
   begin
   nn:=i;
   zasp1(nn);
   zasp(nn);
   tpanel(findcomponent('panel'+inttostr(j))).Color:=clwhite;
   delay_(500);
   tpanel(findcomponent('panel'+inttostr(j))).Color:=clYellow;
   break;
   end;
  end;
 end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormShow(Sender: TObject);
var i,k:integer;
    s:string;
begin
  label4.Caption:=label1.Font.Name;
  updown1.Position:=127;
  label1.Caption:=#127;
  label7.Caption:=#127;
  k:=-1;
  for i:=0 to 255 do
  begin
  s:=_2(i);
  if s<>'' then
  begin
  inc(k);
  combobox1.Items.Add(s);
  if i=label1.Font.Charset then
  begin
   combobox1.ItemIndex:=k;
   statictext1.Caption:=inttostr(i);
  end;
  end;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 if fontdialog1.Execute then
 label1.Font:=fontdialog1.Font;
  label4.Caption:=label1.Font.Name;
  if form3.Showing or form2.Showing then
  button4Click(self);
end;

procedure TForm1.Button3Click(Sender: TObject);
var i:integer;
begin
if button3.Caption='¿‚ÚÓ' then
begin
button3.Caption:='œ‡ÛÁ‡';
for i:=0 to 255 do
begin
 updown1.Position:=i;
 label1.Caption:=chr(i);
 label7.Caption:=label1.Caption;
 application.ProcessMessages;
delay_(2000 div sc);
if button3.Caption='¿‚ÚÓ' then break;
end;
end
else
button3.Caption:='¿‚ÚÓ';
end;

procedure TForm1.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
 sc:=UpDown2.Position;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
var  i:integer;
     s:string;
begin
 for i:=0 to 255 do
 begin
  s:=_2(i);
  if (s<>'') and (s=combobox1.Text) then
  begin
   label1.Font.Charset:=i;
   statictext1.Caption:=inttostr(i);
   break;
  end;
 end;
  if form3.Showing or form2.Showing then
  button4Click(self);
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
var i,j:integer;
begin
if edit1.Focused then exit;
 label7.Caption:=Key;
 i:=ord(key);
 updown1.Position:=i;
 label1.Caption:=chr(i);
 if form2.Showing then
 begin
  for i:=1 to 4 do
  for j:=1 to 47 do
  if label1.Caption=ckb[i,j] then
  begin
   with form2 do
   begin
   nn:=i;
   zasp1(nn);
   zasp(nn);
   tpanel(findcomponent('panel'+inttostr(j))).Color:=clwhite;
   delay_(500);
   tpanel(findcomponent('panel'+inttostr(j))).Color:=clYellow;
   break;
   end;
  end;
 end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
var i:integer;
begin
case key of
'0'..'9',#8:exit;
#13:
begin
 i:=strtoint(edit1.Text);
 label1.Caption:=chr(i);
 label7.Caption:=label1.Caption;
 updown1.Position:=i;
 button2.SetFocus;
end;
else key:=#0;
end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if button3.Caption='œ‡ÛÁ‡' then
Button3Click(self);
form2.Close;
form3.Close;
form4.Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
var i,j,k,m:integer;
    s,s1:string;
begin
for i:=1 to 47 do
with form2 do
begin
TPanel(findcomponent('Panel'+inttostr(i))).font:=label1.Font;
TPanel(findcomponent('Panel'+inttostr(i))).font.Charset:=label1.Font.Charset;
TPanel(findcomponent('Panel'+inttostr(i))).Caption:=ckb[1,i];
end;
form2.show;
form3.listbox1.Font:=label1.Font;
form3.listbox1.Font.Charset:=label1.Font.Charset;
form3.listbox1.Clear;
form4.richedit1.clear;
s:='';
j:=0;
//form4.RichEdit1.Paragraph.TabCount:=2;
//form4.RichEdit1.Paragraph.Tab[0]:=100;
//form4.RichEdit1.Paragraph.Tab[1]:=200;
for i:=0 to 255 do
begin
inc(j);
s:=s+chr(i);
s1:=chr(i);
if s1=#0 then
s1:=' ';
if trim(s1)='' then s1:=' ';
form4.richedit1.Lines.Add(inttostr(i+1)+')   '+s1+'    Alt+'+inttostr(i));
with form4.richedit1 do
begin
k:=pos(inttostr(i+1)+')',form4.richedit1.Text);
selstart:=k+length(inttostr(i+1)+')');
k:=pos('Alt+'+inttostr(i),form4.richedit1.Text)-1;
sellength:=k-selstart;
selattributes.Name:=form1.Label1.Font.Name;
selattributes.size:=form1.Label1.Font.size;
selattributes.Style:=form1.Label1.Font.Style;
end;
if j=32 then
begin
form3.listbox1.Items.Add(s);
j:=0;
s:='';
end;
end;
form3.show;
form4.richedit1.SelStart:=1;
form4.show;
end;

procedure TForm1.UpDown1Exit(Sender: TObject);
begin
combobox1.SetFocus;
end;

end.
