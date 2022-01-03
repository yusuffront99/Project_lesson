unit uUtama;

interface

uses
  Classes, SysUtils, Controls,
  RaApplication, RaBase, RaControlsVCL, jpeg;

type
  TForm1 = class(TRaFormCompatible)
    rpnl1: TRaPanel;
    btnHome: TRaBitButton;
    rpnl2: TRaPanel;
    rpnl3: TRaPanel;
    btnMahasiswa: TRaBitButton;
    rtabs: TRaTabControl;
    tabHome: TRaTabSheet;
    tabMahasiswa: TRaTabSheet;
    procedure btnMahasiswaClick(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.btnMahasiswaClick(Sender: TObject);
begin
  rtabs.ActiveTabIndex:=1;
end;

procedure TForm1.btnHomeClick(Sender: TObject);
begin
  rtabs.ActiveTabIndex:=0;
end;



procedure TForm1.FormShow(Sender: TObject);
begin
  tabHome.TabVisible:=False;
  tabMahasiswa.TabVisible:=False;
  rtabs.ActiveTab:=tabHome;
end;

end.
