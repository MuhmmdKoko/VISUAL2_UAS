unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection, frxClass, frxDBSet;

type
  TForm3 = class(TForm)
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
    cbb1: TComboBox;
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
    ds3: TDataSource;
    con2: TZConnection;
    ZQuery1: TZQuery;
    edt6: TEdit;
    cbb2: TComboBox;
    cbb3: TComboBox;
    edt7: TEdit;
    btn6: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
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
  Form3: TForm3;

implementation

{$R *.dfm}

{ TForm3 }

procedure TForm3.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
cbb1.Text:='';
cbb2.Text:='';
cbb3.Text:='';
end;

procedure TForm3.posisiawal;
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
edt5.Enabled:= False;
edt6.Enabled:= False;
edt7.Enabled:= False;
cbb1.Enabled:= False;
cbb2.Enabled:= False;
cbb3.Enabled:= False;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.btn1Click(Sender: TObject);
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
edt5.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
cbb1.Enabled:= True;
cbb2.Enabled:= True;
cbb3.Enabled:= True;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('ID ORTU TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('NIK ORTU TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('NAMA ORTU TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('PENDIDIKAN ORTU TIDAK BOLEH KOSONG!');
end else
if edt6.Text ='' then
begin
ShowMessage('PEKERJAAN ORTU TIDAK BOLEH KOSONG!');
end else
if edt7.Text ='' then
begin
ShowMessage('TELPON ORTU TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('ALAMAT ORTU TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('AGAMA ORTU TIDAK BOLEH KOSONG!');
end else
if cbb2.Text ='' then
begin
ShowMessage('JENIS KELAMIN ORTU TIDAK BOLEH KOSONG!');
end else
if cbb3.Text ='' then
begin
ShowMessage('STATUS ORTU TIDAK BOLEH KOSONG!');
end else
begin
ZQuery1.SQL.Clear; //simpan
ZQuery1.SQL.Add('insert into tabel_ortu values ("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+edt5.Text+'","'+cbb1.Text+'","'+cbb2.Text+'","'+cbb3.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_ortu');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
if (edt1.Text= '') or (edt2.Text ='') or (edt3.Text= '') or (edt4.Text ='') or (edt6.Text ='') or (edt7.Text ='') or (edt5.Text ='') or (cbb1.Text ='') or (cbb2.Text ='')or (cbb3.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update tabel_ortu set id= "'+edt1.Text+'",nik="'+edt2.Text+'",nama="'+edt3.Text+'",pekerjaan="'+edt4.Text+'",alamat="'+edt6.Text+'",telp="'+edt7.Text+'",pendidikan="'+edt5.Text+'",agama="'+cbb1.Text+'",jenkel="'+cbb2.Text+'",status="'+cbb3.Text+'" where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_ortu');
ZQuery1.Open;
posisiawal;
end;
end;


procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= ZQuery1.Fields[0].AsString; // DBGrid
edt2.Text:= ZQuery1.Fields[1].AsString;
edt3.Text:= ZQuery1.Fields[2].AsString;
edt4.Text:= ZQuery1.Fields[3].AsString;
edt6.Text:= ZQuery1.Fields[4].AsString;
edt7.Text:= ZQuery1.Fields[5].AsString;
edt5.Text:= ZQuery1.Fields[6].AsString;
cbb1.Text:= ZQuery1.Fields[7].AsString;
cbb2.Text:= ZQuery1.Fields[8].AsString;
cbb3.Text:= ZQuery1.Fields[9].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;
edt6.Enabled:= True;
edt7.Enabled:= True;
edt5.Enabled:= True;
cbb1.Enabled:= True;
cbb2.Enabled:= True;
cbb3.Enabled:= True;

btn1.Enabled:= false;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from tabel_ortu where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_ortu');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
