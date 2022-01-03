library volume;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes,
  Vcl.Dialogs,
  Vcl.StdCtrls;

{$R *.res}

function getVolume1(panjang, lebar, tinggi:double):string;stdcall;
var
  hasil:double;
begin
 hasil:=panjang*lebar*tinggi;
 Result:=FloatToStr(hasil);
end;

function getVolume2(panjang, lebar, tinggi:TEdit):string;stdcall;
var
  hasil:double;
begin
   if(Trim(panjang.Text) = '') then
    begin
      MessageDlg('Nilai panjang belum diisi', mtWarning, [mbok], 0);
      panjang.SetFocus;
    end else
    if(Trim(lebar.Text) = '') then
    begin
      MessageDlg('Nilai Lebar belum diisi', mtWarning, [mbok], 0);
      lebar.SetFocus;
    end else
    if(Trim(tinggi.Text) = '') then
    begin
      MessageDlg('Nilai tinggi belum diisi', mtWarning, [mbok], 0);
      tinggi.SetFocus;
    end else
    begin
      hasil:=StrToFloat(panjang.Text)*StrToFloat(lebar.text)*StrToFloat(tinggi.Text);
      Result:=FloatToStr(hasil);
    end;
end;

exports
  getVolume1, getVolume2;
begin
end.
