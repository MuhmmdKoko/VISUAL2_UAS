object Form5: TForm5
  Left = 456
  Top = 109
  Width = 478
  Height = 392
  Caption = 'Tambah Data Kelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 112
    Top = 16
    Width = 315
    Height = 18
    Caption = 'TAMBAH DATA KELAS MA SMIP BANJARMASIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 16
    Top = 48
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object lbl3: TLabel
    Left = 16
    Top = 80
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl4: TLabel
    Left = 16
    Top = 112
    Width = 28
    Height = 13
    Caption = 'JENIS'
  end
  object lbl5: TLabel
    Left = 16
    Top = 144
    Width = 46
    Height = 13
    Caption = 'JURUSAN'
  end
  object lbl10: TLabel
    Left = 97
    Top = 48
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl11: TLabel
    Left = 97
    Top = 80
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl12: TLabel
    Left = 97
    Top = 112
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl13: TLabel
    Left = 97
    Top = 144
    Width = 4
    Height = 13
    Caption = ':'
  end
  object edt1: TEdit
    Left = 120
    Top = 48
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 120
    Top = 80
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 120
    Top = 112
    Width = 321
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 120
    Top = 144
    Width = 321
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 24
    Top = 176
    Width = 75
    Height = 49
    Caption = 'BARU'
    TabOrder = 4
  end
  object btn2: TButton
    Left = 112
    Top = 176
    Width = 75
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 5
  end
  object btn3: TButton
    Left = 200
    Top = 176
    Width = 75
    Height = 49
    Caption = 'UBAH'
    TabOrder = 6
  end
  object btn4: TButton
    Left = 288
    Top = 176
    Width = 75
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 7
  end
  object btn5: TButton
    Left = 376
    Top = 176
    Width = 75
    Height = 49
    Caption = 'BATAL'
    TabOrder = 8
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 232
    Width = 425
    Height = 120
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ds3: TDataSource
    Left = 40
  end
  object con2: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3307
    Database = 'db_laporan_siswa'
    User = 'root'
    Protocol = 'mysqld-5'
    LibraryLocation = 'libmysql.dll'
    Left = 72
  end
  object zqry1: TZQuery
    Params = <>
    Left = 8
  end
end
