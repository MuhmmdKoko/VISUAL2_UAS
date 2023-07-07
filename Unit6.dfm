object Form6: TForm6
  Left = 365
  Top = 137
  Width = 479
  Height = 433
  Caption = 'Tambah Data Hubungan'
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
    Left = 112
    Top = 16
    Width = 352
    Height = 18
    Caption = 'TAMBAH DATA HUBUNGAN MA SMIP BANJARMASIN'
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
    Width = 47
    Height = 13
    Caption = 'ID SISWA'
  end
  object lbl4: TLabel
    Left = 16
    Top = 112
    Width = 42
    Height = 13
    Caption = 'ID ORTU'
  end
  object lbl5: TLabel
    Left = 16
    Top = 144
    Width = 61
    Height = 13
    Caption = 'STATUS HUB'
  end
  object lbl6: TLabel
    Left = 16
    Top = 176
    Width = 66
    Height = 13
    Caption = 'KETERANGAN'
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
    Top = 176
    Width = 321
    Height = 21
    TabOrder = 3
  end
  object cbb1: TComboBox
    Left = 120
    Top = 144
    Width = 321
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'Kandung'
      'Angkat')
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 267
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
  object btn6: TButton
    Left = 24
    Top = 208
    Width = 75
    Height = 49
    Caption = 'BARU'
    TabOrder = 5
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 112
    Top = 208
    Width = 75
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = btn7Click
  end
  object btn8: TButton
    Left = 200
    Top = 208
    Width = 75
    Height = 49
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = btn8Click
  end
  object btn9: TButton
    Left = 288
    Top = 208
    Width = 75
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 8
  end
  object btn10: TButton
    Left = 376
    Top = 208
    Width = 75
    Height = 49
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = btn10Click
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
      'SELECT * FROM tabel_hubungan')
    Params = <>
    Left = 8
  end
end
