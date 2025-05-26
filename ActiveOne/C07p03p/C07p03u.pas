unit C07p03u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TASavingsAccountForm = class(TForm)
    lblAmount: TLabel;
    edtAmount: TEdit;
    btnCalculate: TButton;
    lblYears: TLabel;
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ASavingsAccountForm: TASavingsAccountForm;

implementation

{$R *.dfm}

procedure TASavingsAccountForm.btnCalculateClick(Sender: TObject);
var
  Amount: Double;
  Years: Integer;
  Interest: Double;
begin
  Amount := StrToFloat(edtAmount.Text);
  Years := 0;
  Interest := 5 / 100;

  if Amount > 15000 then
  begin
    MessageDlg('Maximum amount is 15,000!', mtWarning, [mbOK], 0);
  end;


  while Amount >= 0 do
  begin
    Amount := Amount + (Amount * Interest);
    Amount := Amount - 1000;
    Years := Years + 1;
  end;

  lblYears.Caption := IntToStr(Years);
end;

end.
