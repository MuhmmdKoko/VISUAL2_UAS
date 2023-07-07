unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    ds3: TDataSource;
    con2: TZConnection;
    ZQuery1: TZQuery;
    procedure posisiawal;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
end;

procedure TForm5.btn1Click(Sender: TObject);
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
end;

procedure TForm5.posisiawal;
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
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('ID KELAS TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('NAMA SISWA TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('JENIS KELAS TIDAK BOLEH KOSONG!');
end else
if edt4.Text ='' then
begin
ShowMessage('JURUSAN TIDAK BOLEH KOSONG!');
end else
begin
ZQuery1.SQL.Clear; //SIMPAN
ZQuery1.SQL.Add('insert into tabel_kelas values ("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_kelas');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
if (edt1.Text= '') or (edt2.Text ='') or (edt3.Text= '') or (edt4.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update tabel_kelas set id= "'+edt1.Text+'",nama="'+edt2.Text+'",jenis="'+edt3.Text+'",jurusan="'+edt4.Text+'" where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_kelas');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= ZQuery1.Fields[0].AsString; // DBGrid
edt2.Text:= ZQuery1.Fields[1].AsString;
edt3.Text:= ZQuery1.Fields[2].AsString;
edt4.Text:= ZQuery1.Fields[3].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt4.Enabled:= True;

btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from tabel_kelas where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_kelas');
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
