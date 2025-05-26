program C08p02p;

uses
  Vcl.Forms,
  C08p02u in 'C08p02u.pas' {TestResultsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTestResultsForm, TestResultsForm);
  Application.Run;
end.
