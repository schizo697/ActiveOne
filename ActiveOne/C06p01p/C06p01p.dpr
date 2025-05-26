program C06p01p;

uses
  Vcl.Forms,
  C06p01u in 'C06p01u.pas' {WhoIsOlderForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TWhoIsOlderForm, WhoIsOlderForm);
  Application.Run;
end.
