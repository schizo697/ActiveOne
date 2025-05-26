unit C13p01u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Samples.Spin;

type
  TSafeSprayingEvaluationForm = class(TForm)
    lblTemp: TLabel;
    lblWind: TLabel;
    lblHumidity: TLabel;
    speTemp: TSpinEdit;
    speWind: TSpinEdit;
    speHumidity: TSpinEdit;
    btnEvaluate: TButton;
    bbtnReset: TBitBtn;
    gbDecision: TGroupBox;
    lblDecision: TLabel;
    procedure btnEvaluateClick(Sender: TObject);
    procedure bbtnResetClick(Sender: TObject);

  private

  function TempOK: Boolean;
  function WindOk: Boolean;
  function HumidOk: Boolean;

  public
    { Public declarations }
  end;

var
  SafeSprayingEvaluationForm: TSafeSprayingEvaluationForm;

implementation

{$R *.dfm}

function TSafeSprayingEvaluationForm.TempOK: Boolean;
begin
  if speTemp.Value > 20 then
  begin
    Result := True
  end
  else
  begin
    Result := False;
  end;
end;

function TSafeSprayingEvaluationForm.WindOk: Boolean;
begin
  if speWind.Value <= 15 then
  begin
    Result := True
  end
  else
  begin
    Result := False;
  end;
end;

function TSafeSprayingEvaluationForm.HumidOk: Boolean;
begin
  if (speHumidity.Value >= 25) and (speHumidity.Value <= 65) then
  begin
    Result := True
  end
  else
  begin
    Result := False;
  end;
end;

procedure TSafeSprayingEvaluationForm.bbtnResetClick(Sender: TObject);
begin
  lblDecision.Caption := '';
  lblDecision.Color := clBtnFace;
  speWind.Value := 0;
  speTemp.Value := 0;
  speHumidity.Value := 0;
end;

procedure TSafeSprayingEvaluationForm.btnEvaluateClick(Sender: TObject);
begin
  if TempOK and WindOK and HumidOK then
  begin
    lblDecision.Caption := 'OK TO SPRAY';
    lblDecision.Color := clGreen;
  end
  else
  begin
    lblDecision.Caption := 'DO NOT SPRAY';
    lblDecision.Color := clRed;
  end;
end;

end.
