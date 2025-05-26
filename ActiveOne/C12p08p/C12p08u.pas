unit C12p08u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSalespersonsCommission = class(TForm)
    gbSales: TGroupBox;
    edtSales: TEdit;
    gbCommission: TGroupBox;
    lblCommission: TLabel;
    gbTotalSales: TGroupBox;
    lblTotalSales: TLabel;
    gbStandard: TGroupBox;
    btnStandard: TButton;
    btnStandardRefund: TButton;
    gbPromotional: TGroupBox;
    btnPromotional: TButton;
    btnPromotionalRefund: TButton;
    btnReset: TButton;
    procedure btnResetClick(Sender: TObject);
    procedure btnStandardClick(Sender: TObject);
    procedure btnStandardRefundClick(Sender: TObject);
    procedure btnPromotionalClick(Sender: TObject);
    procedure btnPromotionalRefundClick(Sender: TObject);
  private
    TotalSales: Double;
    TotalCommissions: Double;
    Commission: Double;
    Sales: Double;
    procedure UpdateLabels;
    procedure ResetFields;

    procedure StandardSale(const SaleAmount: Double; var TotalSales,
      TotalCommissions: Double);

    procedure StandardRefund(const SaleAmount: Double; var TotalSales,
      TotalCommissions: Double);

    procedure PromotionalSale(const SaleAmount: Double; var TotalSales,
      TotalCommissions: Double);

    procedure PromotionalRefund(const SaleAmount: Double; var TotalSales,
      TotalCommissions: Double);

  public
    { Public declarations }
  end;

var
  SalespersonsCommission: TSalespersonsCommission;

implementation

{$R *.dfm}

const
  StandardCommison = 0.07;
  PromotionalCommion = 0.10;

procedure TSalespersonsCommission.ResetFields;
var
 I: Integer;
begin
  for I := 0 to Self.ComponentCount -1 do
    if Self.Components[I] is TEdit then
    begin
      TEdit(Self.Components[I]).Clear;
    end;

    lblCommission.Caption := 'Commission: ';
    lblTotalSales.Caption := 'Total Sales: ';
    TotalSales := 0;
    TotalCommissions := 0;
end;

procedure TSalespersonsCommission.UpdateLabels;
begin
  lblCommission.Caption := FloatToStrF(TotalCommissions, ffFixed, 12, 2);
  lblTotalSales.Caption := FloatToStrF(TotalSales, ffFixed, 12, 2);
end;

procedure TSalespersonsCommission.PromotionalRefund(const SaleAmount: Double;
  var TotalSales: Double; var TotalCommissions: Double);

begin
  Commission := SaleAmount * PromotionalCommion;
  TotalSales := TotalSales - SaleAmount;
  TotalCommissions := TotalCommissions - Commission;
end;

procedure TSalespersonsCommission.PromotionalSale(const SaleAmount: Double;
  var TotalSales: Double; var TotalCommissions: Double);
begin
  Commission := SaleAmount * PromotionalCommion;
  TotalSales := TotalSales + SaleAmount;
  TotalCommissions := TotalCommissions + Commission;
end;

procedure TSalespersonsCommission.StandardRefund(const SaleAmount: Double;
  var TotalSales: Double; var TotalCommissions: Double);
begin
  Commission := SaleAmount * StandardCommison;
  TotalSales := TotalSales - SaleAmount;
  TotalCommissions := TotalCommissions - Commission;
end;

procedure TSalespersonsCommission.StandardSale(const SaleAmount: Double;
  var TotalSales: Double; var TotalCommissions: Double);
begin
  Commission := SaleAmount * StandardCommison;
  TotalSales := TotalSales + SaleAmount;
  TotalCommissions := TotalCommissions + Commission;
end;

procedure TSalespersonsCommission.btnStandardClick(Sender: TObject);
begin
  Sales := StrToFloatDef(edtSales.Text, 0);
  StandardSale(Sales, TotalSales, TotalCommissions);
  UpdateLabels;
end;

procedure TSalespersonsCommission.btnStandardRefundClick(Sender: TObject);
begin
  Sales := StrToFloatDef(edtSales.Text, 0);
  StandardRefund(Sales, TotalSales, TotalCommissions);
  UpdateLabels;
end;

procedure TSalespersonsCommission.btnPromotionalClick(Sender: TObject);
begin
  Sales := StrToFloatDef(edtSales.Text, 0);
  PromotionalSale(Sales, TotalSales, TotalCommissions);
  UpdateLabels;
end;

procedure TSalespersonsCommission.btnPromotionalRefundClick(Sender: TObject);
begin
  Sales := StrToFloatDef(edtSales.Text, 0);
  PromotionalRefund(Sales, TotalSales, TotalCommissions);
  UpdateLabels;
end;

procedure TSalespersonsCommission.btnResetClick(Sender: TObject);
begin
  ResetFields;
end;
end.


