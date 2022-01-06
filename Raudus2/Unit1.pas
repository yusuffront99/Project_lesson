unit Unit1;

interface

uses
  Classes, SysUtils, Controls,
  RaApplication, RaBase, RaControlsVCL, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, jpeg;

type
  TForm1 = class(TRaFormCompatible)
    rpnl1: TRaPanel;
    btnHome: TRaBitButton;
    rpnl2: TRaPanel;
    btnMahasiswa: TRaBitButton;
    rpnl3: TRaPanel;
    rtbcntrl1: TRaTabControl;
    tabHome: TRaTabSheet;
    img1: TRaImage;
    rpnl4: TRaPanel;
    tabMahasiswa: TRaTabSheet;
    grid: TRaDBGrid;
    btn1: TRaBitButton;
    con1: TZConnection;
    mahasiswa: TZQuery;
    ds1: TDataSource;
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
