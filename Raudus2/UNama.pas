unit UNama;

interface

uses
  Classes, SysUtils, Controls,
  RaApplication, RaBase, RaControlsVCL;

type
  TForm2 = class(TRaFormCompatible)
    rlbl1: TRaLabel;
    npm: TRaEdit;
    RaLabel1: TRaLabel;
    nama: TRaEdit;
    RaLabel2: TRaLabel;
    RaPanel1: TRaPanel;
    RaButton1: TRaButton;
    RaButton2: TRaButton;
    RaLabel4: TRaLabel;
    tmpLahir: TRaEdit;
    RaLabel3: TRaLabel;
    cbbJk: TRaComboBox;
    tglLahir: TRaEdit;
    procedure btnbatalClick(Sender: TObject);
    procedure RaButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  Unit1;

{$R *.dfm}

procedure TForm2.btnbatalClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm2.RaButton1Click(Sender: TObject);
begin
  with Form1 do
  begin
    mahasiswa.Append;
    mahasiswa.FieldByName('npm').AsString:=npm.Text;
    mahasiswa.FieldByName('nama').AsString:=nama.Text;
    mahasiswa.FieldByName('tgl_lahir').AsDateTime:=StrToDate(tglLahir.Text);
    mahasiswa.FieldByName('tmp_lahir').AsString:=tmpLahir.Text;
    mahasiswa.FieldByName('jns_kelamin').AsString:=cbbJk.Text;
  end;
end;

end.
