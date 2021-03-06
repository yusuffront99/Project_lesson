unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inifiles, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    CbColors: TComboBox;
    bSave: TButton;
    TrackBar1: TTrackBar;
    lbInfo: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
  private

    procedure CreateINIFILE;
    procedure SetColor(Color:String);
    procedure setPosition(Value:Integer);
    procedure SetRules;

    function getColor:String;
    function getPosition:Integer;
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

procedure TForm1.bSaveClick(Sender: TObject);
begin
  case CbColors.ItemIndex of
    0 : begin
        Form1.Color:=clBtnFace;
        SetColor('clBtnFace');
    end;

    1 : begin
        Form1.Color:=clRed;
        SetColor('clRed');
    end;

    2 : begin
        Form1.Color:=clGreen;
        SetColor('clGreen');
    end;

    3 : begin
        Form1.Color:=clBlue;
        SetColor('clBlue');
    end;

    4 : begin
        Form1.Color:=clYellow;
        SetColor('clYellow');
    end;
  end;
end;

procedure TForm1.CreateINIFILE;
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'Setting.ini';
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
SetRules;
end;

function TForm1.getColor: String;
begin
  try
   NameFile:=ExtractFilePath(Application.ExeName)+'Setting.ini';
   Config:=TIniFile.Create(NameFile);
   Result:=Config.ReadString('Setting','Form Color','');
   Config.Free;
  except
    on err :Exception do
    MessageDlg(err.Message, mtError, [mbok], 0);
  end;
end;

function TForm1.getPosition: Integer;
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'Setting.ini';
    Config:=TIniFile.Create(NameFile);
    Result:=StrToInt(Config.ReadString('Setting','Position',''));
    Config.Free;
  except
    on err : Exception do
    MessageDlg(err.Message, mtError, [mbok], 0);
  end;
end;

procedure TForm1.SetColor(Color: String);
begin
  try
    NameFile:=ExtractFilePath(Application.ExeName)+'Setting.ini';
    Config:= TIniFile.Create(NameFile);
    Config.WriteString('Setting','Form Color', Color);
    Config.Free;
  except
    on err: Exception do
    MessageDlg(err.Message, mtError, [mbok],0);
  end;
end;

procedure TForm1.setPosition(Value: Integer);
begin
 try
    NameFile:=ExtractFilePath(Application.ExeName)+'Setting.ini';
    Config:= TIniFile.Create(NameFile);
    Config.WriteString('Setting','Position', IntToStr(value));
    Config.Free;
  except
    on err: Exception do
    MessageDlg(err.Message, mtError, [mbok],0);
  end;
end;

procedure TForm1.SetRules;
begin
  //Set COlors
  if getColor='clBtnFace' then
      Form1.Color:=clBtnFace else
  if getColor='clRed' then
      Form1.Color:=clRed else
  if getColor='clGreen' then
      Form1.Color:=clGreen else
  if getColor='clBlue' then
      Form1.Color:=clBlue else      
      Form1.Color:=clYellow;

  //Set Positions
  TrackBar1.Position:=getPosition;
  lbInfo.Caption:=IntToStr(getPosition);
  
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  SetPosition(Trackbar1.Position);
  lbInfo.Caption:=IntToStr(Trackbar1.Position);
end;

end.
