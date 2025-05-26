unit C05p05u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TSupaDupaSalesForm = class(TForm)
    lblPrice: TLabel;
    edtPrice: TEdit;
    btnDiscount: TButton;
    lblDiscount: TLabel;
    lblAmountDue: TLabel;
    lblDiscountPrice: TLabel;
    lblAmountPrice: TLabel;
    procedure btnDiscountClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupaDupaSalesForm: TSupaDupaSalesForm;

implementation

{$R *.dfm}


procedure TSupaDupaSalesForm.btnDiscountClick(Sender: TObject);
var
  Price: Double;
  TotalPrice: Double;
  Tax: Double;
  Discount: Double;
begin
  Price := StrToFloat(edtPrice.Text);
  TotalPrice := 0;
  Tax := 0.14;
  if Price > 200 then
    begin
      Discount := Price * 0.50;
      Tax := Discount * Tax;
      Price := Price - Discount;
      TotalPrice := TotalPrice + Price + Tax;
      lblDiscountPrice.Caption := FloatToStrF(Discount, ffFixed, 15,2);
      lblAmountPrice.Caption := FloatToStrF(TotalPrice, ffFixed, 15,2);
    end
  else
    begin
      Discount := Price * 0.10;
      Tax := Discount * Tax;
      Price := Price - Discount;
      TotalPrice := TotalPrice + Price + Tax;
      lblDiscountPrice.Caption := FloatToStrF(Discount, ffFixed, 15,2);
      lblAmountPrice.Caption := FloatToStrF(TotalPrice, ffFixed, 15,2);
    end;
end;

end.
