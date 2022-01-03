object Form1: TForm1
  Left = 192
  Top = 125
  Width = 870
  Height = 450
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rlbl1: TRaLabel
    Left = 240
    Top = 88
    Width = 89
    Height = 17
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    Caption = 'Nama Lengkap'
  end
  object rdt1: TRaEdit
    Left = 328
    Top = 88
    Width = 145
    Height = 25
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object btn1: TRaButton
    Left = 328
    Top = 120
    Width = 145
    Height = 25
    Caption = 'see'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    OnClick = btn1Click
  end
end
