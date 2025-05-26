unit C13p07u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TPriceCalculatorForm = class(TForm)
    gbWholesale: TGroupBox;
    edtWPrice: TEdit;
    gbMarkup: TGroupBox;
    gbSellingPrice: TGroupBox;
    lblPrice: TLabel;
    bbtnReset: TBitBtn;
    sbMark15: TSpeedButton;
    sbMark20: TSpeedButton;
    sbMark25: TSpeedButton;
    procedure bbtnResetClick(Sender: TObject);
    procedure sbMark15Click(Sender: TObject);
    procedure sbMark20Click(Sender: TObject);
    procedure sbMark25Click(Sender: TObject);
  private
    function SellingPrice(Cost: String; MarkUp: Double;
      out SellStr: String): String;
    procedure UpdateLabel(const SellStr: String);
  public
    { Public declarations }
  end;

var
  PriceCalculatorForm: TPriceCalculatorForm;

implementation

{$R *.dfm}
const
  Mark15 = 0.15;
  Mark20 = 0.20;
  Mark25 = 0.25;
var
  SellStr: String;

procedure TPriceCalculatorForm.UpdateLabel;
begin
  lblPrice.Caption := 'R ' + SellStr;
end;

function TPriceCalculatorForm.SellingPrice(
  Cost: string; MarkUp: Double; out SellStr: string): String;
var
  Wholesale: Double;
  Selling: Double;
begin
  Wholesale := StrToFloat(Cost);
  Selling := Wholesale + MarkUp * Wholesale;
  SellStr := FloatToStrF(Selling, ffFixed, 12 , 2);
  Result := SellStr;
end;

procedure TPriceCalculatorForm.sbMark15Click(Sender: TObject);
begin
  SellingPrice(edtWPrice.Text, Mark15, SellStr);
  UpdateLabel(SellStr);
end;

procedure TPriceCalculatorForm.sbMark20Click(Sender: TObject);
begin
  SellingPrice(edtwPrice.Text, Mark20, SellStr);
  UpdateLabel(SellStr);
end;

procedure TPriceCalculatorForm.sbMark25Click(Sender: TObject);
begin
  SellingPrice(edtWPrice.Text, Mark25, SellStr);
  UpdateLabel(SellStr);
end;

procedure TPriceCalculatorForm.bbtnResetClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TEdit then
    begin
      TEdit(Self.Components[i]).Clear;
    end;
  sbMark15.Down := False;
  sbMark20.Down := False;
  sbMark25.Down := False;
  lblPrice.Caption := 'R ';
end;

end.
