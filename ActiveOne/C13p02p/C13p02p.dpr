program C13p02p;

uses
  Vcl.Forms,
  C13p02u in 'C13p02u.pas' {BondApplicationAssessmentForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBondApplicationAssessmentForm, BondApplicationAssessmentForm);
  Application.Run;
end.
