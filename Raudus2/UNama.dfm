object Form2: TForm2
  Left = 192
  Top = 125
  Width = 324
  Height = 450
  BorderIcons = []
  Caption = 'Form Tambah Mahasiswa'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rlbl1: TRaLabel
    Left = 11
    Top = 32
    Width = 78
    Height = 25
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    Caption = 'NPM'
  end
  object npm: TRaEdit
    Left = 104
    Top = 32
    Width = 193
    Height = 33
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object RaLabel1: TRaLabel
    Left = 8
    Top = 176
    Width = 81
    Height = 25
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    Caption = 'TEMPAT LAHIR'
  end
  object nama: TRaEdit
    Left = 104
    Top = 80
    Width = 193
    Height = 33
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object RaLabel2: TRaLabel
    Left = 8
    Top = 80
    Width = 81
    Height = 25
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    Caption = 'NAMA'
  end
  object RaLabel4: TRaLabel
    Left = 8
    Top = 128
    Width = 81
    Height = 25
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    Caption = 'TANGGAL LAHIR'
  end
  object tmpLahir: TRaEdit
    Left = 104
    Top = 176
    Width = 193
    Height = 33
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object RaLabel3: TRaLabel
    Left = 8
    Top = 232
    Width = 81
    Height = 25
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    Caption = 'JENIS KELAMIN'
  end
  object cbbJk: TRaComboBox
    Left = 104
    Top = 224
    Width = 193
    Height = 33
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 10
    Items.Strings = (
      'PRIA'
      'WANITA')
    Text = '-- JENIS KELAMIN --'
  end
  object tglLahir: TRaEdit
    Left = 104
    Top = 128
    Width = 193
    Height = 33
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object RaPanel1: TRaPanel
    Left = 0
    Top = 344
    Width = 308
    Height = 67
    Align = alBottom
    Color = clGreen
    TabOrder = 0
    UI = 'cupertino-grad-v'
    object RaButton1: TRaButton
      Left = 32
      Top = 16
      Width = 105
      Height = 41
      Caption = 'Simpan'
      Color = clBlue
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      UI = 'simple'
      OnClick = RaButton1Click
    end
    object RaButton2: TRaButton
      Left = 168
      Top = 16
      Width = 105
      Height = 41
      Caption = 'Batal'
      Color = clBlue
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      UI = 'simple'
      OnClick = btnbatalClick
    end
  end
end
