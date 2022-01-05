unit Unit1;

interface

uses
  Classes, SysUtils, Controls,
  RaApplication, RaBase, RaControlsVCL, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, jpeg;

type
  TForm1 = class(TRaFormCompatible)
    rpnl1: TRaPanel;
    rpnl2: TRaPanel;
    rpnl3: TRaPanel;
    rtbcntrl1: TRaTabControl;
    tabHome: TRaTabSheet;
    img1: TRaImage;
    rpnl4: TRaPanel;
    tabMahasiswa: TRaTabSheet;
    grid: TRaDBGrid;
    con1: TZConnection;
    siswa: TZQuery;
    ds1: TDataSource;
    btn1: TRaBitButton;
    btnHome: TRaBitButton;
    btnMahasiswa: TRaBitButton;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
    procedure btnMahasiswaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UNama;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  tabHome.TabVisible:=False;
  tabMahasiswa.TabVisible:=False;
  rtbcntrl1.ActiveTab:=tabHome;
end;

procedure TForm1.btnHomeClick(Sender: TObject);
begin
  rtbcntrl1.ActiveTabIndex:=0;
end;

procedure TForm1.btnMahasiswaClick(Sender: TObject);
begin
  rtbcntrl1.ActiveTabIndex:=1;
end;

end.
