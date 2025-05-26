unit C06p03u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TBursarySchemeForm = class(TForm)
    rgAverageScore: TRadioGroup;
    rbNine: TRadioButton;
    rbSeven: TRadioButton;
    rbSix: TRadioButton;
    gbSubjectPassed: TGroupBox;
    chkAccounting: TCheckBox;
    chkEconomics: TCheckBox;
    lblAmount: TLabel;
    btnEvaluate: TButton;
    procedure btnEvaluateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BursarySchemeForm: TBursarySchemeForm;

implementation

{$R *.dfm}

procedure TBursarySchemeForm.btnEvaluateClick(Sender: TObject);
var
  Amount: string;
begin
  if rbNine.Checked then
  begin
    Amount := 'R 10 000.00';
    lblAmount.Caption := Amount;
   end
  else if rbSeven.Checked and (chkAccounting.Checked or chkEconomics.Checked) then
  begin
    Amount := 'R 8 000.00';
    lblAmount.Caption := Amount;
  end
  else if rbSeven.Checked then
  begin
    Amount := ' R 5 000.00';
    lblAmount.Caption := Amount;
  end
  else if rbSix.Checked and chkAccounting.Checked then
  begin
    Amount := 'R 3 000.00';
    lblAmount.Caption := Amount;
  end
  else
  begin
    Amount := '0.00';
    lblAmount.Caption := Amount;
  end;
end;

end.
