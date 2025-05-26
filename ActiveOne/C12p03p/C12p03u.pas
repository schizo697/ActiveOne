unit C12p03u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TFamilyCircusForm = class(TForm)
    lblAdults: TLabel;
    lblChildren: TLabel;
    speAdults: TSpinEdit;
    speChildren: TSpinEdit;
    lblPrice: TLabel;
    btnWeekDays: TButton;
    btnWeekEnd: TButton;
    btnReset: TButton;
    procedure btnWeekDaysClick(Sender: TObject);
    procedure btnWeekEndClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    procedure AdmissionPrice(Adult, Child, Discount: Double;
      var PriceStr: String);
  public
    { Public declarations }
  end;

var
  FamilyCircusForm: TFamilyCircusForm;

implementation

{$R *.dfm}

const
  AdultPrice = 9.90;
  ChildPrice = 6.60;

procedure TFamilyCircusForm.AdmissionPrice(Adult: Double; Child: Double;
  Discount: Double; var PriceStr: string);
var
  Total: Double;
  DiscountAmount: Double;
begin
  Total := (Adult * AdultPrice) + (Child * ChildPrice);
  DiscountAmount := Total * Discount;
  Total := Total - DiscountAmount;

  PriceStr := 'Admission Price: ' + FloatToStrF(Total, ffFixed, 12 ,2);
end;

procedure TFamilyCircusForm.btnResetClick(Sender: TObject);
begin
  speAdults.Value := 0;
  speChildren.Value := 0;
  lblPrice.Caption := 'Admission price: ';
end;

procedure TFamilyCircusForm.btnWeekDaysClick(Sender: TObject);
var
  PriceStr: String;
begin
  AdmissionPrice (speAdults.Value, speChildren.Value, 0.1, PriceStr);
  lblPrice.Caption := PriceStr;
end;

procedure TFamilyCircusForm.btnWeekEndClick(Sender: TObject);
var
  PriceStr: String;
begin
  AdmissionPrice (speAdults.Value, speChildren.Value, 0.0, PriceStr);
  lblPrice.Caption := PriceStr;
end;

end.
