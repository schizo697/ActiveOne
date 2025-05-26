unit C13p03u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TProcedureToFunctionForm = class(TForm)
    lblAdults: TLabel;
    lblChildren: TLabel;
    lblPrice: TLabel;
    speAdults: TSpinEdit;
    speChildren: TSpinEdit;
    btnWeekDays: TButton;
    btnWeekEnd: TButton;
    btnReset: TButton;
    procedure btnWeekDaysClick(Sender: TObject);
    procedure btnWeekEndClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    function AdmissionPrice(Adult, Child, Discount: Double): Double;
  public
    { Public declarations }
  end;

var
  ProcedureToFunctionForm: TProcedureToFunctionForm;

implementation

{$R *.dfm}

function TProcedureToFunctionForm.AdmissionPrice(
Adult: Double; Child: Double; Discount: Double): Double;
const
  AdultPrice = 9.90;
  ChildPrice = 6.60;
var
  Total: Double;
  DiscountAmount: Double;
begin
  Total := (Adult * AdultPrice) + (Child * ChildPrice);
  DiscountAmount := Total * Discount;
  Total := Total - DiscountAmount;
  Result := Total;
end;

procedure TProcedureToFunctionForm.btnResetClick(Sender: TObject);
begin
  speAdults.Value := 0;
  speChildren.Value := 0;
  lblPrice.Caption := 'Admission price: ';
end;

procedure TProcedureToFunctionForm.btnWeekDaysClick(Sender: TObject);
var
  Total: Double;
begin
  Total := AdmissionPrice(speAdults.Value, speChildren.Value, 0.1);
  lblPrice.Caption := FloatToStrF(Total, ffFixed, 12, 2);
end;

procedure TProcedureToFunctionForm.btnWeekEndClick(Sender: TObject);
var
  Total: Double;
begin
  Total := AdmissionPrice(speAdults.Value, speChildren.Value, 0.0);
  lblPrice.Caption := FloatToStrF(Total, ffFixed, 12 ,2);
end;

end.
