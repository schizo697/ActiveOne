unit C05p01u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TIfStatementForm = class(TForm)
    IfStatement: TGroupBox;
    spnAge: TSpinEdit;
    spnMileage: TSpinEdit;
    radHealthy: TRadioButton;
    radNot: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    lblMessage: TLabel;
    lblServiceDue: TLabel;
    lblWarning: TLabel;
    btnCheck: TButton;
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IfStatementForm: TIfStatementForm;

implementation

{$R *.dfm}

procedure TIfStatementForm.btnCheckClick(Sender: TObject);
var
  Age: Integer;
  Mileage: Integer;
  YearPassed: Boolean;
  ServiceDue: Boolean;
  EatHealthy: Boolean;
  Smoker  : Boolean;
begin
  Age := spnAge.Value;
  Mileage := spnMileage.Value;
  YearPassed := False;
  EatHealthy := False;
  Smoker := True;

  if (Age > 13) and (Age < 19)then
    begin
      lblMessage.Caption := 'Teenager';
    end;
  if (Mileage >= 25000) or YearPassed = True then
    begin
      ServiceDue := True;
      lblServiceDue.Caption := 'Service Due True';
    end;
  if radHealthy.Checked then
    begin
      lblWarning.Caption := 'Beri Good';
      EatHealthy := True
    end
  else
    begin
      Smoker := True;
      lblWarning.Caption := 'High Risk';
    end;
end;

end.
