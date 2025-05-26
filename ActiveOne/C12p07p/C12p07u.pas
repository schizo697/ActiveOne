unit C12p07u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TStudentLoanRepaymentForm = class(TForm)
    rgCategory: TRadioGroup;
    rgPeriod: TRadioGroup;
    lblLoan: TLabel;
    edtLoan: TEdit;
    lblMonthly: TLabel;
    btnCalculate: TButton;
    btnReset: TButton;
    procedure btnResetClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);

  private

    procedure DetermineDetails(var Loans, Rates: Double;
      var NoOfPayments: Integer);
    procedure CalcRepay(var Loans, Rates, Repayment: Double;
      var NoOfPayments: Integer);
    procedure ShowResult(var Repayment: Double);

  public
    { Public declarations }
  end;

var
  StudentLoanRepaymentForm: TStudentLoanRepaymentForm;

implementation

{$R *.dfm}

procedure TStudentLoanRepaymentForm.DetermineDetails(var Loans: Double;
  var Rates: Double; var NoOfPayments: Integer);
begin

  case rgCategory.ItemIndex of
    0: Rates := 0.01;
    1: Rates:= 0.0125;
  end;

  case rgPeriod.ItemIndex of
    0: NoOfPayments := 24;
    1: NoOfPayments := 36;
  end;
end;

procedure TStudentLoanRepaymentForm.CalcRepay(var Loans: Double; var Rates: Double;
  var Repayment: Double; var NoOfPayments: Integer);
var
  Factor: Double;
begin
  Factor := (1 - exp (-NoOfPayments * ln (1.0 + Rates)));
  Repayment := Loans * Rates / Factor;

  ShowMessage(Format('Loan: %.2f, Rate: %.4f, Months: %d, Repayment: %.2f',
    [Loans, Rates, NoOfPayments, Repayment]));
end;

procedure TStudentLoanRepaymentForm.ShowResult(var Repayment: Double);
begin

  lblMonthly.Caption := 'Monthly repayment is ' +
  FloatToStrF(Repayment, ffFixed, 12, 2);
end;

procedure TStudentLoanRepaymentForm.btnCalculateClick(Sender: TObject);
var
  Loans: Double;
  Rates: Double;
  NoOfPayments: Integer;
  Repayment: Double;
begin
  Loans := StrToFloatDef(edtLoan.Text, 0);
  DetermineDetails(Loans, Rates, NoOfPayments);
  CalcRepay(Loans, Rates, Repayment, NoOfPayments);
  ShowResult(Repayment);
end;

procedure TStudentLoanRepaymentForm.btnResetClick(Sender: TObject);
begin
  rgCategory.ItemIndex := -1;
  rgPeriod.ItemIndex := -1;
  edtLoan.Text := '';
  lblMonthly.Caption := 'Monthly repayment is R ';
end;

end.
