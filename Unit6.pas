unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    cbb1: TComboBox;
    dbgrd1: TDBGrid;
    ds3: TDataSource;
    con2: TZConnection;
    ZQuery1: TZQuery;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    procedure posisiawal;
    procedure bersih;
    procedure btn6Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

{ TForm6 }

procedure TForm6.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
cbb1.Text:='';
edt4.Clear;
end;

procedure TForm6.posisiawal;
begin
bersih;
btn6.Enabled:= True;
btn7.Enabled:= False;
btn8.Enabled:= False;
btn9.Enabled:= False;
btn10.Enabled:= False;

edt1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;
cbb1.Enabled:= False;
edt4.Enabled:= False;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
bersih;
btn6.Enabled:= False;
btn7.Enabled:= True;
btn8.Enabled:= False;
btn9.Enabled:= False;
btn10.Enabled:= True;

edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
cbb1.Enabled:= True;
edt4.Enabled:= True;
end;

procedure TForm6.btn10Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn7Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('ID HUBUNGAN TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('ID SISWA TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('ID ORTU TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('STATUS HUBUNGAN TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('KETERANGAN TIDAK BOLEH KOSONG!');
end else
begin
ZQuery1.SQL.Clear; //SIMPAN
ZQuery1.SQL.Add('insert into tabel_hubungan values ("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+cbb1.Text+'","'+edt4.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_hubungan');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm6.btn8Click(Sender: TObject);
begin
if (edt1.Text= '') or (edt2.Text ='') or (edt3.Text= '') or (cbb1.Text ='') or (edt4.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update tabel_hubungan set id= "'+edt1.Text+'",siswa_id="'+edt2.Text+'",ortu_id="'+edt3.Text+'",status_hub="'+cbb1.Text+'",keterangan="'+edt4.Text+'" where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_hubungan');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= ZQuery1.Fields[0].AsString; // DBGrid
edt2.Text:= ZQuery1.Fields[1].AsString;
edt3.Text:= ZQuery1.Fields[2].AsString;
cbb1.Text:= ZQuery1.Fields[3].AsString;
edt4.Text:= ZQuery1.Fields[4].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
cbb1.Enabled:= True;
edt4.Enabled:= True;

btn6.Enabled:= False;
btn7.Enabled:= False;
btn8.Enabled:= True;
btn9.Enabled:= True;
btn10.Enabled:= True;
end;

procedure TForm6.btn9Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from tabel_hubungan where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_hubungan');
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
