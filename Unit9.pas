unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm9 = class(TForm)
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
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    con1: TZConnection;
    ZQuery1: TZQuery;
    cbb1: TComboBox;
    procedure posisiawal;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

procedure TForm9.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
cbb1.Text:='';
edt5.Clear;
end;

procedure TForm9.btn1Click(Sender: TObject);
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
cbb1.Enabled:= True;
edt5.Enabled:= True;
end;

procedure TForm9.posisiawal;
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
cbb1.Enabled:= False;
edt5.Enabled:= False;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm9.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm9.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
ShowMessage('ID USER TIDAK BOLEH KOSONG!');
end else
if edt2.Text ='' then
begin
ShowMessage('NAMA USER TIDAK BOLEH KOSONG!');
end else
if edt3.Text ='' then
begin
ShowMessage('PASSWORD USER TIDAK BOLEH KOSONG!');
end else
if cbb1.Text ='' then
begin
ShowMessage('LEVEL USER TIDAK BOLEH KOSONG!');
end else
if edt5.Text ='' then
begin
ShowMessage('STATUS USER TIDAK BOLEH KOSONG!');
end else
begin
ZQuery1.SQL.Clear; //SIMPAN
ZQuery1.SQL.Add('insert into tabel_user values ("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+cbb1.Text+'","'+edt5.Text+'")');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_user');
ZQuery1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm9.btn3Click(Sender: TObject);
begin
if (edt1.Text= '') or (edt2.Text ='') or (edt3.Text= '') or (cbb1.Text ='') or (edt5.Text ='') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
begin
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('Update tabel_user set id= "'+edt1.Text+'",nama="'+edt2.Text+'",password="'+edt3.Text+'",level="'+cbb1.Text+'",status="'+edt5.Text+'" where id="'+edt1.Text+'"');
ZQuery1. ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from tabel_user');
ZQuery1.Open;
posisiawal;
end;
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= ZQuery1.Fields[0].AsString; // DBGrid
edt2.Text:= ZQuery1.Fields[1].AsString;
edt3.Text:= ZQuery1.Fields[2].AsString;
cbb1.Text:= ZQuery1.Fields[3].AsString;
edt5.Text:= ZQuery1.Fields[4].AsString;
edt1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
edt5.Enabled:= True;
cbb1.Enabled:= True;

btn1.Enabled:= False;
btn2.Enabled:= False;
btn3.Enabled:= True;
btn4.Enabled:= True;
btn5.Enabled:= True;
end;

end.
