program C13p03p;

uses
  Vcl.Forms,
  C13p03u in 'C13p03u.pas' {ProcedureToFunctionForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProcedureToFunctionForm, ProcedureToFunctionForm);
  Application.Run;
end.
