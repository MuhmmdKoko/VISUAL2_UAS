object Form1: TForm1
  Left = 511
  Top = 277
  Width = 309
  Height = 268
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 24
    Top = 24
    object N1: TMenuItem
      Caption = 'tambah data'
      object N2as1: TMenuItem
        Caption = 'form siswa'
        OnClick = N2as1Click
      end
      object formortu1: TMenuItem
        Caption = 'form ortu'
        OnClick = formortu1Click
      end
      object formwalikelas1: TMenuItem
        Caption = 'form wali kelas'
        OnClick = formwalikelas1Click
      end
      object form1: TMenuItem
        Caption = 'form kelas'
        OnClick = form1Click
      end
      object formpoin1: TMenuItem
        Caption = 'form poin'
        OnClick = formpoin1Click
      end
      object formriwayatpoin1: TMenuItem
        Caption = 'form riwayat poin'
        OnClick = formriwayatpoin1Click
      end
      object formuser1: TMenuItem
        Caption = 'form user'
        OnClick = formuser1Click
      end
      object formhubungan1: TMenuItem
        Caption = 'form hubungan'
        OnClick = formhubungan1Click
      end
    end
    object formjoin1: TMenuItem
      Caption = 'form join'
      object innerjoin1: TMenuItem
        Caption = 'inner join'
      end
      object outerjoin1: TMenuItem
        Caption = 'cross join'
      end
      object rightjoin1: TMenuItem
        Caption = 'right join'
      end
      object leftjoin1: TMenuItem
        Caption = 'left join'
      end
    end
  end
end
