object Form3: TForm3
  Left = 734
  Top = 16
  Width = 556
  Height = 653
  Caption = 'Tambah Data Orang Tua'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 104
    Top = 16
    Width = 357
    Height = 18
    Caption = 'TAMBAH DATA ORANG TUA MA SMIP BANJARMASIN'
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
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl4: TLabel
    Left = 16
    Top = 112
    Width = 60
    Height = 13
    Caption = 'NAMA ORTU'
  end
  object lbl5: TLabel
    Left = 16
    Top = 240
    Width = 61
    Height = 13
    Caption = 'PENDIDIKAN'
  end
  object lbl6: TLabel
    Left = 16
    Top = 144
    Width = 57
    Height = 13
    Caption = 'PEKERJAAN'
  end
  object lbl7: TLabel
    Left = 16
    Top = 208
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl8: TLabel
    Left = 16
    Top = 176
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl9: TLabel
    Left = 16
    Top = 272
    Width = 36
    Height = 13
    Caption = 'AGAMA'
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
    Top = 240
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl14: TLabel
    Left = 97
    Top = 144
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl15: TLabel
    Left = 97
    Top = 208
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl16: TLabel
    Left = 97
    Top = 176
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl17: TLabel
    Left = 97
    Top = 272
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl18: TLabel
    Left = 16
    Top = 304
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl19: TLabel
    Left = 97
    Top = 304
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl20: TLabel
    Left = 16
    Top = 336
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object lbl21: TLabel
    Left = 97
    Top = 336
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
  object edt5: TEdit
    Left = 120
    Top = 240
    Width = 321
    Height = 21
    TabOrder = 6
  end
  object cbb1: TComboBox
    Left = 120
    Top = 272
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Islam'
      'Kristen'
      'Katolik'
      'KongHucu'
      'Buddha'
      'Hindu')
  end
  object btn1: TButton
    Left = 24
    Top = 368
    Width = 75
    Height = 49
    Caption = 'BARU'
    TabOrder = 10
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 112
    Top = 368
    Width = 75
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 11
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 200
    Top = 368
    Width = 75
    Height = 49
    Caption = 'UBAH'
    TabOrder = 12
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 288
    Top = 368
    Width = 75
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 13
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 376
    Top = 368
    Width = 75
    Height = 49
    Caption = 'BATAL'
    TabOrder = 14
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 424
    Width = 425
    Height = 185
    DataSource = ds3
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt6: TEdit
    Left = 120
    Top = 176
    Width = 321
    Height = 21
    TabOrder = 4
  end
  object cbb2: TComboBox
    Left = 120
    Top = 304
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Laki - Laki'
      'Perempuan')
  end
  object cbb3: TComboBox
    Left = 120
    Top = 336
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object edt7: TEdit
    Left = 120
    Top = 208
    Width = 321
    Height = 21
    TabOrder = 5
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
      'SELECT * FROM tabel_ortu')
    Params = <>
    Left = 8
  end
end
