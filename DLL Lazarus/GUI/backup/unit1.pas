unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ToggleBox1: TToggleBox;
  private

  public

  end;

var
  Form1: TForm1;

implementation
function LuasSegitiga(alas, tinggi:TEdit):String;stdcall;external'belajar.dll';
{$R *.lfm}

end.

