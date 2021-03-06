unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inifiles, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    eUser: TEdit;
    ePass: TEdit;
    Label2: TLabel;
    ePort: TEdit;
    Label3: TLabel;
    Create: TButton;
    Read: TButton;
    procedure CreateClick(Sender: TObject);
    procedure ReadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Config: TIniFile;


implementation

{$R *.dfm}

procedure TForm1.ReadClick(Sender: TObject);
 var
 NameFile:String;

begin
  NameFile:=ExtractFilePath(Application.ExeName)+'Belajar.ini';
  Config:=TIniFile.Create(NameFile);
  eUser.Text:=Config.ReadString('SETTING','Username','');
  ePass.Text:=Config.ReadString('SETTING','Password','');
  ePort.Text:=IntToStr(Config.ReadInteger('SETTING','Port',0));
  Config.Free;
end;

procedure TForm1.CreateClick(Sender: TObject);
var
  NameFile:String;

begin
  NameFile:=ExtractFilePath(Application.ExeName)+'Belajar.ini';
  Config:=TIniFile.Create(NameFile);
  Config.WriteString('SETTING','Username',eUser.Text);
  Config.WriteString('SETTING','Password',ePass.Text);
  Config.WriteInteger('SETTING','Port',StrToInt(ePort.Text));
  Config.Free;
  ShowMessage('Configuration was created successfully');
end;

end.
