object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 186
  ClientWidth = 250
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
    Top = 22
    Width = 25
    Height = 13
    Caption = 'Color'
  end
  object lbRange: TLabel
    Left = 140
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
  object cbColors: TComboBox
    Left = 77
    Top = 19
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
  object TrackBar1: TTrackBar
    Left = 56
    Top = 91
    Width = 177
    Height = 63
    Max = 100
    TabOrder = 1
  end
  object Button1: TButton
    Left = 92
    Top = 46
    Width = 109
    Height = 25
    Caption = 'save'
    TabOrder = 2
    OnClick = Button1Click
  end
end
