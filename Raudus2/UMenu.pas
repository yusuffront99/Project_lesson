unit UMenu;

interface

uses
  Classes, SysUtils, Controls,
  RaApplication, RaBase, RaControlsVCL, jpeg, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm1 = class(TRaFormCompatible)
    rpnl1: TRaPanel;
    btnMahasiswa: TRaBitButton;
    rpnl2: TRaPanel;
    btnHome: TRaBitButton;
    rtabs: TRaTabControl;
    tabHome: TRaTabSheet;
    img1: TRaImage;
    rpnl4: TRaPanel;
    tabMahasiswa: TRaTabSheet;
    rpnl3: TRaPanel;
    dbgrd1: TDBGrid;
    connect: TZConnection;
    querysiswa: TZQuery;
    ds1: TDataSource;
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

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
  tabHome.TabVisible:=False;
  tabMahasiswa.TabVisible:=False;
  rtabs.ActiveTab:=tabHome;
end;

procedure TForm1.btnHomeClick(Sender: TObject);
begin
  rtabs.ActiveTabIndex:=0;
end;

procedure TForm1.btnMahasiswaClick(Sender: TObject);
begin
  rtabs.ActiveTabIndex:=1;
end;

end.
