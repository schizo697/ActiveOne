unit C02p03u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSixpenceJoesFamilySupermarket = class(TForm)
    GroupBox1: TGroupBox;
    radFlour: TRadioButton;
    radRice: TRadioButton;
    radSugar: TRadioButton;
    radMeal: TRadioButton;
    lblPrice: TLabel;
    procedure radRiceClick(Sender: TObject);
    procedure radFlourClick(Sender: TObject);
    procedure radSugarClick(Sender: TObject);
    procedure radMealClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SixpenceJoesFamilySupermarket: TSixpenceJoesFamilySupermarket;

implementation

{$R *.dfm}

procedure TSixpenceJoesFamilySupermarket.radFlourClick(Sender: TObject);
begin
  lblPrice.Caption := 'Flour at R12.99';
end;

procedure TSixpenceJoesFamilySupermarket.radMealClick(Sender: TObject);
begin
  lblPrice.Caption := 'Mealie Meal at R2.16';
end;

procedure TSixpenceJoesFamilySupermarket.radRiceClick(Sender: TObject);
begin
  lblPrice.Caption := 'Rice at R4.39';
end;

procedure TSixpenceJoesFamilySupermarket.radSugarClick(Sender: TObject);
begin
  lblPrice.Caption := 'Sugar at R4.10';
end;

end.
