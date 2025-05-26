unit C12p01u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TAddingMethodCallsForm = class(TForm)
    lblPrice: TLabel;
    rgProducts: TRadioGroup;
    procedure rgProductsClick(Sender: TObject);
  private
    procedure DisplayPrice(Product, Price: String);
  public
    { Public declarations }
  end;

var
  AddingMethodCallsForm: TAddingMethodCallsForm;

implementation

{$R *.dfm}

procedure TAddingMethodCallsForm.DisplayPrice(Product: string; Price: string);
begin
  lblPrice.Caption := Product + ' cost R ' + Price + ' per kilogram';
end;

procedure TAddingMethodCallsForm.rgProductsClick(Sender: TObject);
begin
  case rgProducts.ItemIndex of
    0: DisplayPrice ('Flour', '12,00');
    1: DisplayPrice ('Rice', '4.39');
    2: DisplayPrice ('Sugar', '4.10');
    3: DisplayPrice ('Mealie Meal', '2.16');
    4: DisplayPrice ('Salt', '22.35');
    5: DisplayPrice ('Oats Porridge', '10.49');
  end;
end;

end.
