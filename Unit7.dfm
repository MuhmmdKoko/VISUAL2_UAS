object Form7: TForm7
  Left = 721
  Top = 158
  Width = 486
  Height = 427
  Caption = 'Tambah Data Poin'
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
    Width = 309
    Height = 18
    Caption = 'TAMBAH DATA POIN MA SMIP BANJARMASIN'
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
    Width = 57
    Height = 13
    Caption = 'NAMA POIN'
  end
  object lbl4: TLabel
    Left = 16
    Top = 112
    Width = 34
    Height = 13
    Caption = 'BOBOT'
  end
  object lbl5: TLabel
    Left = 16
    Top = 144
    Width = 28
    Height = 13
    Caption = 'JENIS'
  end
  object lbl6: TLabel
    Left = 16
    Top = 176
    Width = 38
    Height = 13
    Caption = 'STATUS'
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
  object lbl14: TLabel
    Left = 97
    Top = 176
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
  object cbb1: TComboBox
    Left = 120
    Top = 176
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Prestasi'
      'Pelanggaran')
  end
  object btn1: TButton
    Left = 24
    Top = 208
    Width = 75
    Height = 49
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 208
    Width = 75
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 208
    Width = 75
    Height = 49
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 208
    Width = 75
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 208
    Width = 75
    Height = 49
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 264
    Width = 425
    Height = 120
    DataSource = ds3
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object ds3: TDataSource
    DataSet = ZQuery1
    Left = 40
  end
  object con2: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'laporan_siswa'
    User = 'root'
    Protocol = 'mysqld-5'
    LibraryLocation = 'C:\Program Files (x86)\Borland\Zeos703\libmysql.dll'
    Left = 72
  end
  object ZQuery1: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'SELECT * FROM tabel_poin')
    Params = <>
    Left = 8
  end
end
