unit C02p04u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TJollyJoesFamilySupermarket = class(TForm)
    GroupBox1: TGroupBox;
    rad5km: TRadioButton;
    rad510: TRadioButton;
    rad1020: TRadioButton;
    rad20: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    lbl5km: TLabel;
    lbl510: TLabel;
    lbl1020: TLabel;
    lbl20: TLabel;
    procedure rad510Click(Sender: TObject);
    procedure rad5kmClick(Sender: TObject);
    procedure rad1020Click(Sender: TObject);
    procedure rad20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  JollyJoesFamilySupermarket: TJollyJoesFamilySupermarket;

implementation

{$R *.dfm}

procedure TJollyJoesFamilySupermarket.rad1020Click(Sender: TObject);
begin
  lbl1020.Caption := 'R17.50';
  lbl20.Caption := '';
  lbl510.Caption := '';
  lbl5km.Caption := '';
end;

procedure TJollyJoesFamilySupermarket.rad20Click(Sender: TObject);
begin
  lbl1020.Caption := '';
  lbl20.Caption := 'Ask Jolly Joe';
  lbl510.Caption := '';
  lbl5km.Caption := '';
end;

procedure TJollyJoesFamilySupermarket.rad510Click(Sender: TObject);
begin
  lbl1020.Caption := '';
  lbl20.Caption := '';
  lbl510.Caption := 'R12.50';
  lbl5km.Caption := '';
end;

procedure TJollyJoesFamilySupermarket.rad5kmClick(Sender: TObject);
begin
  lbl1020.Caption := '';
  lbl20.Caption := '';
  lbl510.Caption := '';
  lbl5km.Caption := 'R7.50';
end;

end.
