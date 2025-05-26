program C13p01p;

uses
  Vcl.Forms,
  C13p01u in 'C13p01u.pas' {SafeSprayingEvaluationForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSafeSprayingEvaluationForm, SafeSprayingEvaluationForm);
  Application.Run;
end.
