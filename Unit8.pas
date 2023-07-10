unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TForm8 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    dtp1: TDateTimePicker;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    ds3: TDataSource;
    con2: TZConnection;
    ZQuery1: TZQuery;
    lbl18: TLabel;
    lbl19: TLabel;
    edt8: TEdit;
    cbb1: TComboBox;
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt8.Clear;
edt5.Clear;
edt6.Clear;
cbb1.Text:='';
end;

procedure TForm8.posisiawal;
begin
bersih;
btn1.Enabled:= True;
btn2.Enabled:= False;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= False;

edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
edt4.Enabled:= False;
edt8.Enabled:= False;
edt5.Enabled:= False;
edt6.Enabled:= False;
dtp1.Enabled:= False;
cbb1.Enabled:= False;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:= False;
btn2.Enabled:= True;
btn3.Enabled:= False;
btn4.Enabled:= False;
btn5.Enabled:= True;

edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt8.Enabled:= True;
edt5.Enabled:= True;
edt6.Enabled:= True;
dtp1.Enabled:= True;
cbb1.Enabled:= True;
end;

procedure TForm8.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('ID RIWAYAT POIN TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('ID POIN TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('ID WALI TIDAK BOLEH KOSONG!');
end else
if edt8.Text ='' then
begin
ShowMessage('ID ORTU TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('ID KELAS TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('SEMESTER TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('STATUS TIDAK BOLEH KOSONG!');
end else
begin
ZQuery1.SQL.Clear; //simpan
ZQuery1.SQL.Add('insert into tabel_riwayat_poin values ("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt8.Text+'","'+edt5.Text+'","'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'","'+edt6.Text+'","'+cbb1.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_riwayat_poin');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
if (edt1.Text= '') or (edt2.Text ='') or (edt3.Text= '') or (edt4.Text ='') or (edt8.Text ='') or (edt5.Text ='') or (edt6.Text ='') or (cbb1.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update tabel_riwayat_poin set id= "'+edt1.Text+'",siswa_id="'+edt2.Text+'",poin_id="'+edt3.Text+'",wali_id="'+edt4.Text+'",ortu_id="'+edt8.Text+'",kelas_id="'+edt5.Text+'",tanggal="'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'",semester="'+edt6.Text+'",status="'+cbb1.Text+'" where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_riwayat_poin');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= ZQuery1.Fields[0].AsString; // DBGrid
edt2.Text:= ZQuery1.Fields[1].AsString;
edt3.Text:= ZQuery1.Fields[2].AsString;
edt4.Text:= ZQuery1.Fields[3].AsString;
edt8.Text:= ZQuery1.Fields[4].AsString;
edt5.Text:= ZQuery1.Fields[5].AsString;
dtp1.Date:= ZQuery1.Fields[6].AsDateTime;
edt6.Text:= ZQuery1.Fields[7].AsString;
cbb1.Text:= ZQuery1.Fields[8].AsString;

edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt8.Enabled:= True;
edt5.Enabled:= True;
dtp1.Enabled:= True;
edt6.Enabled:= True;
cbb1.Enabled:= True;

btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from tabel_riwayat_poin where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_riwayat_poin');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

end.
