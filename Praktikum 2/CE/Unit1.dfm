object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 298
  ClientWidth = 382
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
  object user: TLabel
    Left = 40
    Top = 35
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object pass: TLabel
    Left = 40
    Top = 72
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label1: TLabel
    Left = 40
    Top = 112
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object ename: TEdit
    Left = 104
    Top = 32
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object epass: TEdit
    Left = 104
    Top = 72
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object dtgl: TDateTimePicker
    Left = 104
    Top = 112
    Width = 169
    Height = 21
    Date = 44478.000000000000000000
    Time = 0.803563865738397000
    TabOrder = 2
  end
  object bconfig: TButton
    Left = 104
    Top = 152
    Width = 73
    Height = 33
    Caption = 'save config'
    TabOrder = 3
    OnClick = bconfigClick
  end
  object bread: TButton
    Left = 200
    Top = 151
    Width = 73
    Height = 35
    Caption = 'Read Config'
    TabOrder = 4
    OnClick = breadClick
  end
end
