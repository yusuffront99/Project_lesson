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
    rtabs: TRaTabControl;
    tabHome: TRaTabSheet;
    img1: TRaImage;
    rpnl4: TRaPanel;
    tabMahasiswa: TRaTabSheet;
    btn1: TRaBitButton;
    procedure FormShow(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
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
  tabHome.TabVisible:=True;
end;

end.
