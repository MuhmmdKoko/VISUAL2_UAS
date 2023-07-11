unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, frxClass, frxDBSet;

type
  TForm2 = class(TForm)
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
    edt6: TEdit;
    dtp1: TDateTimePicker;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    lbl26: TLabel;
    lbl27: TLabel;
    edt11: TEdit;
    lbl28: TLabel;
    lbl29: TLabel;
    ds3: TDataSource;
    con2: TZConnection;
    ZQuery1: TZQuery;
    edt13: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    btn6: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;
edt10.Clear;
edt11.Clear;
edt13.Clear;
cbb1.Text:='';
cbb2.Text:='';
end;

procedure TForm2.btn1Click(Sender: TObject);
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
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
edt9.Enabled:= True;
edt10.Enabled:= True;
edt11.Enabled:= True;
edt13.Enabled:= True;
dtp1.Enabled:= True;
cbb1.Enabled:= True;
cbb2.Enabled:= True;
end;

procedure TForm2.posisiawal;
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
edt6.Enabled:= False;
edt7.Enabled:= False;
edt8.Enabled:= False;
edt9.Enabled:= False;
edt10.Enabled:= False;
edt11.Enabled:= False;
edt13.Enabled:= False;
dtp1.Enabled:= False;
cbb1.Enabled:= False;
cbb2.Enabled:= False;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('NIS SISWA TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('NAMA SISWA TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('NIK SISWA TIDAK BOLEH KOSONG!');
end else
if edt13.Text ='' then
begin
ShowMessage('TEMPAT LAHIR SISWA TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('JENIS KELAMIN SISWA TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('TINGKAT KELAS SISWA TIDAK BOLEH KOSONG!');
end else
if edt7.Text ='' then
begin
ShowMessage('JURUSAN SISWA TIDAK BOLEH KOSONG!');
end else
if edt8.Text ='' then
begin
ShowMessage('WALI KELAS SISWA TIDAK BOLEH KOSONG!');
end else
if edt9.Text ='' then
begin
ShowMessage('ALAMAT SISWA TIDAK BOLEH KOSONG!');
end else
if edt10.Text ='' then
begin
ShowMessage('TELPON SISWA TIDAK BOLEH KOSONG!');
end else
if edt11.Text ='' then
begin
ShowMessage('HP SISWA TIDAK BOLEH KOSONG!');
end else
if cbb2.Text ='' then
begin
ShowMessage('STATUS SISWA TIDAK BOLEH KOSONG!');
end else
begin
ZQuery1.SQL.Clear; //simpan
ZQuery1.SQL.Add('insert into tabel_siswa values ("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt13.Text+'","'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'","'+cbb1.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'","'+edt11.Text+'","'+cbb2.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_siswa');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
if (edt1.Text= '') or (edt2.Text ='') or (edt3.Text= '') or (edt4.Text ='') or (edt13.Text ='') or (cbb1.Text ='') or (edt6.Text ='') or (edt7.Text ='') or (edt8.Text ='') or (edt9.Text ='') or (edt10.Text ='') or (edt11.Text ='') or (cbb2.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update tabel_siswa set id= "'+edt1.Text+'",nis="'+edt2.Text+'",nama_siswa="'+edt3.Text+'",nik="'+edt4.Text+'",tempat_lahir="'+edt13.Text+'",tanggal_lahir="'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'",jenkel="'+cbb1.Text+'",tingkat_kelas="'+edt6.Text+'",jurusan="'+edt7.Text+'",wali_kelas="'+edt8.Text+'",alamat="'+edt9.Text+'",telp="'+edt10.Text+'",hp="'+edt11.Text+'",status="'+cbb2.Text+'" where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_siswa');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= ZQuery1.Fields[0].AsString; // DBGrid
edt2.Text:= ZQuery1.Fields[1].AsString;
edt3.Text:= ZQuery1.Fields[2].AsString;
edt4.Text:= ZQuery1.Fields[3].AsString;
edt13.Text:= ZQuery1.Fields[4].AsString;
dtp1.Date:= ZQuery1.Fields[5].AsDateTime;
cbb1.Text:= ZQuery1.Fields[6].AsString;
edt6.Text:= ZQuery1.Fields[7].AsString;
edt7.Text:= ZQuery1.Fields[8].AsString;
edt8.Text:= ZQuery1.Fields[9].AsString;
edt9.Text:= ZQuery1.Fields[10].AsString;
edt10.Text:= ZQuery1.Fields[11].AsString;
edt11.Text:= ZQuery1.Fields[12].AsString;
cbb2.Text:= ZQuery1.Fields[13].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt13.Enabled:= True;
dtp1.Enabled:= True;
cbb1.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt8.Enabled:= True;
edt9.Enabled:= True;
edt10.Enabled:= True;
edt11.Enabled:= True;
cbb2.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from tabel_siswa where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_siswa');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
