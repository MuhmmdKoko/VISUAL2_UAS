object Form2: TForm2
  Left = 216
  Top = 137
  Width = 921
  Height = 523
  Caption = 'Tambah Data Siswa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 344
    Top = 16
    Width = 319
    Height = 18
    Caption = 'TAMBAH DATA SISWA MA SMIP BANJARMASIN'
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
    Caption = 'NIS'
  end
  object lbl4: TLabel
    Left = 16
    Top = 112
    Width = 65
    Height = 13
    Caption = 'NAMA SISWA'
  end
  object lbl5: TLabel
    Left = 16
    Top = 144
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl6: TLabel
    Left = 16
    Top = 176
    Width = 72
    Height = 13
    Caption = 'TEMPAT LAHIR'
  end
  object lbl7: TLabel
    Left = 16
    Top = 208
    Width = 79
    Height = 13
    Caption = 'TANGGAL LAHIR'
  end
  object lbl8: TLabel
    Left = 16
    Top = 240
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl9: TLabel
    Left = 464
    Top = 48
    Width = 76
    Height = 13
    Caption = 'TINGKAT KELAS'
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
    Left = 545
    Top = 48
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl18: TLabel
    Left = 464
    Top = 80
    Width = 46
    Height = 13
    Caption = 'JURUSAN'
  end
  object lbl19: TLabel
    Left = 464
    Top = 112
    Width = 59
    Height = 13
    Caption = 'WALI KELAS'
  end
  object lbl20: TLabel
    Left = 464
    Top = 144
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl21: TLabel
    Left = 464
    Top = 176
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl22: TLabel
    Left = 545
    Top = 80
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl23: TLabel
    Left = 545
    Top = 112
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl24: TLabel
    Left = 545
    Top = 144
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl25: TLabel
    Left = 545
    Top = 176
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl26: TLabel
    Left = 464
    Top = 208
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object lbl27: TLabel
    Left = 545
    Top = 208
    Width = 4
    Height = 13
    Caption = ':'
  end
  object lbl28: TLabel
    Left = 464
    Top = 240
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object lbl29: TLabel
    Left = 545
    Top = 240
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
  object edt6: TEdit
    Left = 568
    Top = 48
    Width = 321
    Height = 21
    TabOrder = 6
  end
  object dtp1: TDateTimePicker
    Left = 120
    Top = 208
    Width = 169
    Height = 21
    Date = 45075.636559432870000000
    Time = 45075.636559432870000000
    TabOrder = 5
  end
  object btn1: TButton
    Left = 272
    Top = 304
    Width = 75
    Height = 49
    Caption = 'BARU'
    TabOrder = 12
  end
  object btn2: TButton
    Left = 360
    Top = 304
    Width = 75
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 13
  end
  object btn3: TButton
    Left = 448
    Top = 304
    Width = 75
    Height = 49
    Caption = 'UBAH'
    TabOrder = 14
  end
  object btn4: TButton
    Left = 536
    Top = 304
    Width = 75
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 15
  end
  object btn5: TButton
    Left = 624
    Top = 304
    Width = 75
    Height = 49
    Caption = 'BATAL'
    TabOrder = 16
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 360
    Width = 881
    Height = 120
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt7: TEdit
    Left = 568
    Top = 80
    Width = 321
    Height = 21
    TabOrder = 7
  end
  object edt8: TEdit
    Left = 568
    Top = 112
    Width = 321
    Height = 21
    TabOrder = 8
  end
  object edt9: TEdit
    Left = 568
    Top = 144
    Width = 321
    Height = 21
    TabOrder = 9
  end
  object edt10: TEdit
    Left = 568
    Top = 176
    Width = 321
    Height = 21
    TabOrder = 10
  end
  object edt11: TEdit
    Left = 568
    Top = 208
    Width = 321
    Height = 21
    TabOrder = 11
  end
  object edt13: TEdit
    Left = 120
    Top = 176
    Width = 321
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 120
    Top = 240
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 18
  end
  object cbb2: TComboBox
    Left = 568
    Top = 240
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 19
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
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
