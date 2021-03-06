unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inifiles, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    user: TLabel;
    pass: TLabel;
    ename: TEdit;
    epass: TEdit;
    Label1: TLabel;
    dtgl: TDateTimePicker;
    bconfig: TButton;
    bread: TButton;
    procedure FormCreate(Sender: TObject);
    procedure bconfigClick(Sender: TObject);
    procedure breadClick(Sender: TObject);
  private
    { Private declarations }
    procedure isiKonfig(user, pass, tgl:String);
    //method 
    function bacaUser:String;
    function bacaPass:String;
    function bacaTgl:String;
      
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  NameFile:String;
  Configuration:TIniFile;

implementation

{$R *.dfm}

function TForm1.bacaPass: String;
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'Konfigurasi.ini';
        Configuration:=TInifile.Create(NameFile);
        Result:=Configuration.ReadString('Setting','Password','');
        Configuration.Free;
  except
    on error :Exception do
    MessageDlg(error.Message,mtError, [mbok],0);
  end;
end;

function TForm1.bacaTgl: String;
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'Konfigurasi.ini';

        Configuration:=TInifile.Create(NameFile);
        Result:=Configuration.ReadString('Setting','tanggal','');
        Configuration.Free;
  except
    on err :Exception do
    MessageDlg(err.Message, mtError, [mbok],0);
  end;
end;

function TForm1.bacaUser: String;
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'Konfigurasi.ini';
        Configuration:=TInifile.Create(NameFile);
        Result:=Configuration.ReadString('Setting','username','');
        Configuration.Free;
  except
    on err :Exception do
    MessageDlg(err.Message, mtError, [mbok],0);
  end;
end;

procedure TForm1.bconfigClick(Sender: TObject);
begin
  isiKonfig(ename.Text, epass.Text, DateToStr(dtgl.Date));
end;

procedure TForm1.breadClick(Sender: TObject);
var pesan:String;
begin
  pesan:='Username = '+bacaUser+#13+'Password = '+bacaPass+#13+'Tanggal = '+bacaTgl;
  MessageDlg(Pesan, mtInformation, [mbok],0);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'Konfigurasi.ini';
    if FileExists(NameFile) then Exit else
      begin
        Configuration:=TInifile.Create(NameFile);
        Configuration.WriteString('Setting','Username','');
        Configuration.WriteString('Setting','Password','');
        Configuration.WriteString('Setting','tanggal','');
        Configuration.Free;
      end;
  except
     on error :Exception do
     MessageDlg(error.Message, mtError, [mbok],0);
  end;
end;

procedure TForm1.isiKonfig(user, pass, tgl: String);
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'Konfigurasi.ini';
  
        Configuration:=TInifile.Create(NameFile);
        Configuration.WriteString('Setting','Username',user);
        Configuration.WriteString('Setting','Password',pass);
        Configuration.WriteString('Setting','tanggal',tgl);
        Configuration.Free;
        
  except
     on error :Exception do
     MessageDlg(error.Message, mtError, [mbok],0);
  end;
end;

end.
