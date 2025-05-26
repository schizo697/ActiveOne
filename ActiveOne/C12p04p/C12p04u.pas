unit C12p04u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TCurrencyConverterForm = class(TForm)
    gbRand: TGroupBox;
    edtRand: TEdit;
    rgConvert: TRadioGroup;
    btnReset: TButton;
    lblCommission: TLabel;
    lblAmount: TLabel;
    procedure btnResetClick(Sender: TObject);
    procedure rgConvertClick(Sender: TObject);
  private
    procedure ConvertCurrency(Rate: Double; ChargePercent: Double;
      AType: String);
  public
    { Public declarations }
  end;

var
  CurrencyConverterForm: TCurrencyConverterForm;

implementation

{$R *.dfm}

procedure TCurrencyConverterForm.ConvertCurrency(Rate: Double;
  ChargePercent: Double; AType: String);
var
  Rand: Double;
  Converted: Double;
  Fee: Double;
  TotalConverted: Double;
begin
  Rand := StrToFloat(edtRand.Text);
  Converted := Rand * Rate;
  Fee := Converted * ChargePercent;
  TotalConverted := Converted - Fee;


  lblCommission.Caption := 'The commission is R ' + FloatToStrF(Fee,
  ffFixed, 15, 4);
  lblAmount.Caption := 'The amount is ' + FloatToStrF(TotalConverted, ffFixed,
  15, 4) + ' ' + AType;
end;

procedure TCurrencyConverterForm.rgConvertClick(Sender: TObject);
const
  Charge = 0.02;
begin
  case rgConvert.ItemIndex of
    0: ConvertCurrency(0.8039, Charge, 'Args');
    1: ConvertCurrency(29.889, Charge, 'Amours');
    2: ConvertCurrency(2.5379, Charge, 'Gargants');
  end;
end;

procedure TCurrencyConverterForm.btnResetClick(Sender: TObject);
begin
  edtRand.Clear;
  lblCommission.Caption := 'The commission is R';
  lblAmount.Caption := 'The amount is';
end;

end.
