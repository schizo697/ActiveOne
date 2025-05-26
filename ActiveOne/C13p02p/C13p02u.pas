unit C13p02u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Samples.Spin;

type
  TBondApplicationAssessmentForm = class(TForm)
    gbAnnual: TGroupBox;
    speAnual: TSpinEdit;
    gbAge: TGroupBox;
    speAge: TSpinEdit;
    gbOutcome: TGroupBox;
    lblOutcome: TLabel;
    bbtnEvaluate: TBitBtn;
    bbtnReset: TBitBtn;
    procedure bbtnEvaluateClick(Sender: TObject);
    procedure bbtnResetClick(Sender: TObject);
  private
    function AnualInc: Boolean;
    function Age: Boolean;
  public
    { Public declarations }
  end;

var
  BondApplicationAssessmentForm: TBondApplicationAssessmentForm;

implementation

{$R *.dfm}

function TBondApplicationAssessmentForm.AnualInc: Boolean;
begin
  if (speAnual.Value >= 24000)  and (speAnual.Value <= 60000) then
  begin
    Result := True
  end
  else
  begin
    Result := False;
  end;
end;

function TBondApplicationAssessmentForm.Age: Boolean;
begin
  if speAge.Value >= 18 then
  begin
    Result := True
  end
  else
  begin
    Result := False;
  end;
end;

procedure TBondApplicationAssessmentForm.bbtnEvaluateClick(Sender: TObject);
begin
  if AnualInc and Age then
  begin
    lblOutcome.Caption := 'Accepted';
  end
  else
  begin
    lblOutcome.Caption := 'Denied';
  end;
end;

procedure TBondApplicationAssessmentForm.bbtnResetClick(Sender: TObject);
var
 i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TSpinEdit then
    begin
      TSpinEdit(Self.Components[i]).Value := 0;
    end;

    lblOutcome.Caption := 'Outcome';
end;

end.
