object Form1: TForm1
  Left = 219
  Top = 187
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object tgl: TRaComboBox
    Left = 104
    Top = 88
    Width = 49
    Height = 33
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object bulan: TRaComboBox
    Left = 160
    Top = 88
    Width = 49
    Height = 33
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12')
  end
  object tahun: TRaComboBox
    Left = 216
    Top = 88
    Width = 89
    Height = 33
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    Items.Strings = (
      '')
  end
  object btn1: TRaButton
    Left = 104
    Top = 152
    Width = 201
    Height = 33
    Caption = 'btn1'
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    OnClick = btn1Click
  end
end
