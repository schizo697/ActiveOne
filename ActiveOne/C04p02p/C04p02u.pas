unit C04p02u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TCircusAdmissionPriceCalculator1 = class(TForm)
    lblAdult: TLabel;
    lblChildren: TLabel;
    spnAdult: TSpinEdit;
    spnChildren: TSpinEdit;
    lblPrice: TLabel;
    btnOkay: TButton;
    btnReset: TButton;
    procedure btnOkayClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CircusAdmissionPriceCalculator1: TCircusAdmissionPriceCalculator1;

implementation

{$R *.dfm}

procedure TCircusAdmissionPriceCalculator1.btnOkayClick(Sender: TObject);
const
  aAdultPrice = 10;
  aChildrenPrice = 5;
var
  aAdult: integer;
  aChildren: integer;
  aPrice: integer;
begin
  aAdult := aAdultPrice * spnAdult.Value;
  aChildren := aChildrenPrice * spnChildren.Value;
  aPrice := aAdult + aChildren;
  lblPrice.Caption := 'Admission price: R' + IntToStr(aPrice);
end;

procedure TCircusAdmissionPriceCalculator1.btnResetClick(Sender: TObject);
begin
  spnAdult.Value := 0;
  spnChildren.Value := 0;
  lblPrice.Caption := '';
end;

end.
