unit C04p12u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TCarpetingCostForm = class(TForm)
    lblLength: TLabel;
    lblWidth: TLabel;
    btnCalculate: TButton;
    btnReset: TButton;
    lblArea: TLabel;
    lblPrice: TLabel;
    lblPricePerSquareMetter: TLabel;
    edtLength: TEdit;
    edtWidth: TEdit;
    edtPricePerSquareMeter: TEdit;
    procedure btnCalculateClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CarpetingCostForm: TCarpetingCostForm;

implementation

{$R *.dfm}

procedure TCarpetingCostForm.btnCalculateClick(Sender: TObject);
var
  Length: Double;
  Width: Double;
  Area: Double;
  Price: Double;
begin
  Length := StrToFloat(edtLength.Text);
  Width := StrToFloat(edtWidth.Text);
  Area := width * Length;
  Price := StrToFloat(edtPricePerSquareMeter.Text) * Area;
  lblArea.Caption := 'Area = ' + FloatToStrF(Area, ffFixed, 15,2);
  lblPrice.Caption := 'Price = ' + FloatToStrF(Price, ffFixed, 15,2);
end;

procedure TCarpetingCostForm.btnResetClick(Sender: TObject);
begin
  edtLength.Clear;
  edtWidth.Clear;
  edtPricePerSquareMeter.Clear;
  lblArea.Caption := '';
  lblPrice.Caption := '';
end;

end.
