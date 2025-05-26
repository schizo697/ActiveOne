unit C04p09u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMultipleCurrenciesCalculator = class(TForm)
    edtPesos: TEdit;
    gbConvert: TGroupBox;
    radEuro: TRadioButton;
    radBPound: TRadioButton;
    radADollar: TRadioButton;
    edtCurrency: TEdit;
    lblPesos: TLabel;
    lblCurrency: TLabel;
    btnReset: TButton;
    lblFee: TLabel;
    procedure radEuroClick(Sender: TObject);
    procedure radBPoundClick(Sender: TObject);
    procedure radADollarClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MultipleCurrenciesCalculator: TMultipleCurrenciesCalculator;

implementation

{$R *.dfm}

procedure TMultipleCurrenciesCalculator.btnResetClick(Sender: TObject);
begin
  edtPesos.Clear;
  edtCurrency.Clear;
end;

procedure TMultipleCurrenciesCalculator.radADollarClick(Sender: TObject);
const
  aRate = 0.2127;
  aCharge = 0.2;
var
  aAdollar: double;
  aPesos: double;
begin
  aPesos := StrToFloat(edtPesos.Text);
  aAdollar := aRate * aPesos;
  aAdollar := aAdollar - aCharge/100*aAdollar;
  edtCurrency.Text := FloatToStrF(aAdollar, ffFixed, 15,2);

end;

procedure TMultipleCurrenciesCalculator.radBPoundClick(Sender: TObject);
const
  aRate = 0.0830;
  aCharge = 0.2;
var
  aBpound: double;
  aPesos: double;
begin
  aPesos := StrToFloat(edtPesos.Text);
  aBpound := aRate * aPesos;
  aBpound := aBpound - aCharge/100*aBpound;
  edtCurrency.Text := FloatToStrF(aBpound, ffFixed, 15,2);

end;

procedure TMultipleCurrenciesCalculator.radEuroClick(Sender: TObject);
const
  aRate = 0.1236;
  aCharge = 0.2;
var
  aEuro: double;
  aPesos: double;
begin
  aPesos := StrToFloat(edtPesos.Text);
  aEuro := aRate * aPesos;
  aEuro := aEuro - aCharge/100*aEuro;
  edtCurrency.Text := FloatToStrF(aEuro, ffFixed, 15,2);

end;

end.
