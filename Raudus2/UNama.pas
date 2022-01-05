unit UNama;

interface

uses
  Classes, SysUtils, Controls,
  RaApplication, RaBase, RaControlsVCL;

type
  TForm2 = class(TRaFormCompatible)
    rpnl1: TRaPanel;
    btnsimpan: TRaButton;
    btnbatal: TRaButton;
    procedure btnbatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnbatalClick(Sender: TObject);
begin
  Self.Close;
end;

end.
