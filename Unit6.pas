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
    zqry1: TZQuery;
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

end.
