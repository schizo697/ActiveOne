unit C13p05u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TProcedureFunctionCriteriaForm = class(TForm)
    lblLoan: TLabel;
    lblMonthly: TLabel;
    rgCategory: TRadioGroup;
    rgPeriod: TRadioGroup;
    edtLoan: TEdit;
    btnCalculate: TButton;
    btnReset: TButton;
    procedure btnCalculateClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    function DetermineDetails(Loan: Double; out Rates: Double;
    out NoOfPayments: Integer): Double;
    procedure Reset;
  public
    { Public declarations }
  end;

var
  ProcedureFunctionCriteriaForm: TProcedureFunctionCriteriaForm;

implementation

{$R *.dfm}

function TProcedureFunctionCriteriaForm.DetermineDetails(Loan: Double; out Rates:
  Double; out NoOfPayments: Integer): Double;
const
  MeritRate = 0.01;
  StandardRate = 0.0125;
  TwoYrs = 24;
  ThreeYrs = 36;
var
 Factor: Double;
begin
  Rates := 0;
  NoOfPayments := 0;

  case rgCategory.ItemIndex of
  0: Rates := MeritRate;
  1: Rates := StandardRate;
  end;

  case rgPeriod.ItemIndex of
  0: NoOfPayments := TwoYrs;
  1: NoOfPayments := ThreeYrs;
  end;

  Factor := (1 - exp(-NoOfPayments * ln (1.0 + Rates)));
  Result := Loan * Rates / Factor;
end;

procedure TProcedureFunctionCriteriaForm.Reset;
var
  I: Integer;
begin
  for I := 0 to Self.ComponentCount - 1 do
    if Self.Components[I] is TRadioGroup then
    begin
      TRadioGroup(Self.Components[I]).ItemIndex := -1;
    end;
  lblMonthly.Caption := 'Monthly repayment is R ';
  edtLoan.Clear;
  edtLoan.SetFocus;
end;

procedure TProcedureFunctionCriteriaForm.btnCalculateClick(Sender: TObject);
var
  Loan: Double;
  Rates: Double;
  Repayment: Double;
  NoOfPayments: Integer;
begin
  Loan := StrToFloatDef(edtLoan.Text, 0);

  Repayment := DetermineDetails(Loan, Rates, NoOfPayments);

  ShowMessage(Format('Loan: %.2f, Rate: %.4f, Months: %d, Repayment: %.2f',
    [Loan, Rates, NoOfPayments, Repayment]));

  lblMonthly.Caption := 'Monthly repayment is R ' +
    FloatToStrF(Repayment, ffFixed, 12 , 2);
end;

procedure TProcedureFunctionCriteriaForm.btnResetClick(Sender: TObject);
begin
  Reset;
end;
end.
