object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 186
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 15
    Width = 40
    Height = 18
    Caption = 'Color'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbInfo: TLabel
    Left = 144
    Top = 160
    Width = 10
    Height = 18
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CbColors: TComboBox
    Left = 88
    Top = 16
    Width = 145
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Default'
      'Red'
      'Green'
      'Blue'
      'Yellow')
  end
  object bSave: TButton
    Left = 120
    Top = 43
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = bSaveClick
  end
  object TrackBar1: TTrackBar
    Left = 48
    Top = 97
    Width = 209
    Height = 57
    Max = 100
    Min = 1
    Position = 1
    TabOrder = 2
    OnChange = TrackBar1Change
  end
end
