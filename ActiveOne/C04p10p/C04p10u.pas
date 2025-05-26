unit C04p10u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TCircusAdmissionPriceCalculator2 = class(TForm)
    spnAdults: TSpinEdit;
    spnChildren: TSpinEdit;
    lblAdults: TLabel;
    lblChildren: TLabel;
    lblPrice: TLabel;
    btnOk: TButton;
    btnReset: TButton;
    procedure btnOkClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CircusAdmissionPriceCalculator2: TCircusAdmissionPriceCalculator2;

implementation

{$R *.dfm}

procedure TCircusAdmissionPriceCalculator2.btnOkClick(Sender: TObject);
const
  aAdultPrice = 9.90;
  aChildrenPRice = 6.60;
var
  aAdults: double;
  aChildren: double;
  aPrice: double;
begin
  aAdults := aAdultPrice * spnAdults.Value;
  aChildren := aChildrenPRice * spnChildren.Value;
  aPrice := aAdults + aChildren;
  lblPrice.Caption := 'Adminssion price: ' + FloatToStr(aPrice);
end;

procedure TCircusAdmissionPriceCalculator2.btnResetClick(Sender: TObject);
begin
  spnAdults.Value := 0;
  spnChildren.Value := 0;
  lblPrice.Caption := '';
  spnAdults.SetFocus;
end;

end.
