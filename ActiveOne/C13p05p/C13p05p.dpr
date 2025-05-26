program C13p05p;

uses
  Vcl.Forms,
  C13p05u in 'C13p05u.pas' {ProcedureFunctionCriteriaForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProcedureFunctionCriteriaForm, ProcedureFunctionCriteriaForm);
  Application.Run;
end.
