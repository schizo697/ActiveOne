unit C05p03u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  THeartRateForm = class(TForm)
    spnAge: TSpinEdit;
    Label1: TLabel;
    radMale: TRadioButton;
    radFemale: TRadioButton;
    btnCalculate: TButton;
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HeartRateForm: THeartRateForm;

implementation

{$R *.dfm}

procedure THeartRateForm.btnCalculateClick(Sender: TObject);
var
  Age: Double;
  HeartRate: Double;
  Msg: string;
begin
  Age := spnAge.Value;
  if radMale.Checked then
  begin
    HeartRate := 214 - (0.8 * Age);
    Msg := 'Male maximum heart rate: ' + FloatToStr(HeartRate);
    MessageDlg(Msg, MtInformation, [mbOK], 0);
  end
  else if radFemale.Checked then
  begin
    HeartRate := 209 - (0.7 * Age);
    Msg := 'Female maximum heart rate: ' + FloatToStr(HeartRate);
    MessageDlg(Msg, MtInformation, [mbOK], 0);
  end
  else
  begin
    Msg := 'Error Null';
    MessageDlg(Msg, MtWarning, [mbOK], 0);
  end;
end;

end.
