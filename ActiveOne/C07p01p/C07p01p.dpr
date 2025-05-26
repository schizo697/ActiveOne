program C07p01p;

uses
  Vcl.Forms,
  C07p01u in 'C07p01u.pas' {PredictingPopulationForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPredictingPopulationForm, PredictingPopulationForm);
  Application.Run;
end.
