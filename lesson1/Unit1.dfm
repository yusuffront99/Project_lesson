object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 329
  ClientWidth = 593
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 67
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 56
    Top = 101
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 56
    Top = 136
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object eUser: TEdit
    Left = 110
    Top = 64
    Width = 123
    Height = 31
    TabOrder = 0
  end
  object ePass: TEdit
    Left = 108
    Top = 101
    Width = 121
    Height = 29
    TabOrder = 1
  end
  object ePort: TEdit
    Left = 112
    Top = 136
    Width = 121
    Height = 25
    TabOrder = 2
  end
  object Create: TButton
    Left = 48
    Top = 178
    Width = 123
    Height = 32
    Caption = 'Create'
    TabOrder = 3
    OnClick = CreateClick
  end
  object Read: TButton
    Left = 177
    Top = 178
    Width = 112
    Height = 31
    Caption = 'Read'
    TabOrder = 4
    OnClick = ReadClick
  end
end
