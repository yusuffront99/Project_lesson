unit Unit1;

interface

uses
  Classes, SysUtils, Controls,
  RaApplication, RaBase, RaControlsVCL, Dialogs;

type
  TForm1 = class(TRaFormCompatible)
    tgl: TRaComboBox;
    bulan: TRaComboBox;
    tahun: TRaComboBox;
    btn1: TRaButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    procedure isiTGL_THN;
    function getTanggal(tgl, bulan,tahun:String):TDate;
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  isiTGL_THN;
end;

function TForm1.getTanggal(tgl, bulan, tahun: String): TDate;
begin
  Result:=StrToDate(tgl+'/'+bulan+'/'+tahun);
end;

procedure TForm1.isiTGL_THN;
var i:Integer;
begin
   for i:=1 to 31 do
    begin
      tgl.Items.Add(IntToStr(i));
    end;

   for i:=1 to 12 do
    begin
      bulan.Items.Add(IntToStr(i))
    end;
    
   for i:=1950 to 3000 do
    begin
      tahun.Items.Add(IntToStr(i))
    end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  ShowMessage(DateToStr(getTanggal(tgl.Text, bulan.Text, tahun.Text)));
end;





end.
