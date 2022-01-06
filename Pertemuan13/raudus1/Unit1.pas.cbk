unit Unit1;

interface

uses
  Classes, SysUtils, Controls,
  RaApplication, RaBase, RaControlsVCL;

type
  TForm1 = class(TRaFormCompatible)
    tgl: TRaComboBox;
    bulan: TRaComboBox;
    tahun: TRaComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure isiTGL_THN;
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

procedure TForm1.isiTGL_THN;
var i:Integer;
begin
   for i:=1 to 31 do
    begin
      tgl.Items.Add(IntToStr(i));
    end;

   for i:=1950 to 3000 do
    begin
      tahun.Items.Add(IntToStr(i))
    end;
end;

end.
