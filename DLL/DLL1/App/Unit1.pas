unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ePanjang: TEdit;
    eLebar: TEdit;
    eTinggi: TEdit;
    bHitung: TButton;
    Panel1: TPanel;
    lbVol: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    procedure bHitungClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
function getVolume1(panjang, lebar, tinggi:double):string;stdcall;external'volume.dll';
function getVolume2(panjang, lebar, tinggi:TEdit):string;stdcall;external'volume.dll';

{$R *.dfm}

procedure TForm1.bHitungClick(Sender: TObject);
begin
//  lbVol.Caption:=getVolume1(StrToFloat(ePanjang.Text), StrtoFloat(eLebar.Text),StrToFloat(eTinggi.Text));
  lbVol.Caption:=getVolume2(ePanjang, eLebar, eTinggi);
end;

end.
