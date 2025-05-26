program C05p01p;

uses
  Vcl.Forms,
  C05p01u in 'C05p01u.pas' {IfStatementForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TIfStatementForm, IfStatementForm);
  Application.Run;
end.
