unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inifiles, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    lbRange: TLabel;
    cbColors: TComboBox;
    TrackBar1: TTrackBar;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure CreateINIFILE;
    procedure setColor(Color:String);
    procedure setPosition(Value:Integer);
    procedure setRules;
    function getColor:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Config:TIniFile;
  NameFile:String;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  case cbColors.ItemIndex of
  0 : begin
   Form1.Color:=clBtnFace;
   setColor('clBtnFace');
  end;
  1 : begin
   Form1.Color:=clRed;
   setColor('clRed');
  end;
  2: begin
   Form1.Color:=clGreen;
   setColor('clGreen');
  end;

  3: begin
    Form1.Color:=clBlue;
   setColor('clBlue');
  end;

  4: begin
    Form1.Color:=clYellow;
   setColor('clYellow');
  end;
  end;
end;

procedure TForm1.CreateINIFILE;
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'Setting.init';
    if FileExists(NameFile) then exit else
      begin
        Config:=TIniFile.Create(NameFile);
        Config.WriteString('Setting','Form Color','clbtnface');
        Config.WriteString('Setting','Position','0');
        Config.Free;
      end;  
  except 
    on err: Exception do
    MessageDlg(err.Message, mtError, [mbok],0);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 CreateINIFILE;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
ShowMessage(getColor);
end;

function TForm1.getColor: String;
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'Setting.ini';
    Config:=TIniFile.Create(NameFile);
    Result:=Config.ReadString('Setting','Form Color','');
    Config.Free;
  except 
    on err: Exception do
    MessageDlg(err.Message, mtError, [mbok],0);
  end;
end;

procedure TForm1.setColor(color: String);
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'String.ini';
    Config:=TIniFile.Create(NameFile);
    Config.WriteString('Setting','Form Color','Color');
    Config.Free;
  except
    on err:Exception do
    MessageDlg(err.Message, mtError, [mbok],0);
  end;
end;

procedure TForm1.setPosition(Value: Integer);
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'String.ini';
    Config:=TIniFile.Create(NameFile);
    Config.WriteString('Setting','Form Color',IntToStr(Value));
    Config.Free;
  except
    on err:Exception do
    MessageDlg(err.Message, mtError, [mbok],0);
  end;
end;

procedure TForm1.setRules;
begin
  
end;

end.
