library belajar;

{$mode objfpc}{$H+}

uses
  Classes ,StdCtrls , SysUtils, Dialogs, Interfaces
  { you can add units after this };

function LuasSegitiga(alas, tinggi:TEdit):String;stdcall;
var
  hasil:double;
begin
  if Trim(alas.Text)='' then
     begin
       beep;
       ShowMessage('Nilai tidak boleh kosong');
       alas.SetFocus;
     end else
  if Trim(tinggi.Text)='' then
     begin
       beep;
       ShowMessage('Nilai tidak boleh kosong');
       tinggi.SetFocus;
     end else
     hasil:=0.5*StrToFloat(alas.Text)*StrToFloat(tinggi.Text);

     Result:=FloatToStr(hasil);
end;

exports
   LuasSegitiga;

begin
end.

