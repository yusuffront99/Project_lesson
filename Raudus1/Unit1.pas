unit Unit1;

interface

uses
  Classes, SysUtils, Controls,
  RaApplication, RaBase, RaControlsVCL, Dialogs, Messages;

type
  TForm1 = class(TRaFormCompatible)
    rlbl1: TRaLabel;
    rdt1: TRaEdit;
    btn1: TRaButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
   ShowMessage(rdt1.Text);
end;

end.
