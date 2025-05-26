program C13p06p;

uses
  Vcl.Forms,
  C13p06u in 'C13p06u.pas' {ValidationForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TValidationForm, ValidationForm);
  Application.Run;
end.
