unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    N1: TMenuItem;
    N2as1: TMenuItem;
    formortu1: TMenuItem;
    formwalikelas1: TMenuItem;
    form1: TMenuItem;
    formpoin1: TMenuItem;
    formriwayatpoin1: TMenuItem;
    formuser1: TMenuItem;
    formhubungan1: TMenuItem;
    formjoin1: TMenuItem;
    innerjoin1: TMenuItem;
    outerjoin1: TMenuItem;
    rightjoin1: TMenuItem;
    leftjoin1: TMenuItem;
    procedure N2as1Click(Sender: TObject);
    procedure formortu1Click(Sender: TObject);
    procedure formwalikelas1Click(Sender: TObject);
    procedure form1Click(Sender: TObject);
    procedure formhubungan1Click(Sender: TObject);
    procedure formpoin1Click(Sender: TObject);
    procedure formriwayatpoin1Click(Sender: TObject);
    procedure formuser1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm1.N2as1Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm1.formortu1Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm1.formwalikelas1Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm1.form1Click(Sender: TObject);
begin
form5.showmodal
end;

procedure TForm1.formhubungan1Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm1.formpoin1Click(Sender: TObject);
begin
form7.showmodal;
end;

procedure TForm1.formriwayatpoin1Click(Sender: TObject);
begin
form8.showmodal;
end;

procedure TForm1.formuser1Click(Sender: TObject);
begin
form9.showmodal;
end;

end.
 