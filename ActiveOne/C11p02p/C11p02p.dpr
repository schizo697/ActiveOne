program C11p02p;

uses
  Vcl.Forms,
  C11p02u in 'C11p02u.pas' {UndoingChangesForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUndoingChangesForm, UndoingChangesForm);
  Application.Run;
end.
