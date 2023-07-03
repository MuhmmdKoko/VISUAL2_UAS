object Form4: TForm4
  Left = 558
  Top = 83
  Width = 481
  Height = 547
  Caption = 'Tambah Data Wali Kelas'
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
    Width = 356
    Height = 18
    Caption = 'TAMBAH DATA WALI KELAS MA SMIP BANJARMASIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 8
    Top = 48
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object lbl3: TLabel
    Left = 8
    Top = 80
    Width = 17
    Height = 13
    Caption = 'NIP'
  end
  object lbl4: TLabel
    Left = 8
    Top = 112
    Width = 58
    Height = 13
    Caption = 'NAMA WALI'
  end
  object lbl5: TLabel
    Left = 8
    Top = 144
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl6: TLabel
    Left = 8
    Top = 176
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl7: TLabel
    Left = 8
    Top = 208
    Width = 38
    Height = 13
    Caption = 'TELPON'
  end
  object lbl8: TLabel
    Left = 8
    Top = 240
    Width = 88
    Height = 13
    Caption = 'MATA PELAJARAN'
  end
  object lbl9: TLabel
    Left = 8
    Top = 272
    Width = 61
    Height = 13
    Caption = 'PENDIDIKAN'
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
  object lbl15: TLabel
    Left = 97
    Top = 208
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl16: TLabel
    Left = 97
    Top = 240
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
    Left = 8
    Top = 304
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object lbl19: TLabel
    Left = 97
    Top = 304
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
  object edt5: TEdit
    Left = 120
    Top = 240
    Width = 321
    Height = 21
    TabOrder = 6
  end
  object edt6: TEdit
    Left = 120
    Top = 272
    Width = 321
    Height = 21
    TabOrder = 7
  end
  object cbb1: TComboBox
    Left = 120
    Top = 304
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object btn1: TButton
    Left = 24
    Top = 336
    Width = 75
    Height = 49
    Caption = 'BARU'
    TabOrder = 9
  end
  object btn2: TButton
    Left = 112
    Top = 336
    Width = 75
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 10
  end
  object btn3: TButton
    Left = 200
    Top = 336
    Width = 75
    Height = 49
    Caption = 'UBAH'
    TabOrder = 11
  end
  object btn4: TButton
    Left = 288
    Top = 336
    Width = 75
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 12
  end
  object btn5: TButton
    Left = 376
    Top = 336
    Width = 75
    Height = 49
    Caption = 'BATAL'
    TabOrder = 13
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 392
    Width = 425
    Height = 120
    DataSource = ds3
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt7: TEdit
    Left = 120
    Top = 176
    Width = 321
    Height = 21
    TabOrder = 4
  end
  object edt8: TEdit
    Left = 120
    Top = 208
    Width = 321
    Height = 21
    TabOrder = 5
  end
  object cbb2: TComboBox
    Left = 120
    Top = 144
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Laki - laki'
      'Perempuan')
  end
  object ds3: TDataSource
    DataSet = zqry1
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
    LibraryLocation = 'libmysql.dll'
    Left = 72
  end
  object zqry1: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'SELECT * FROM tabel_wali_kelas')
    Params = <>
    Left = 8
  end
end
