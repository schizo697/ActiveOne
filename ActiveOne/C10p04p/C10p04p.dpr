program C10p04p;

uses
  Vcl.Forms,
  C10p04u in 'C10p04u.pas' {StatusPanelForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TStatusPanelForm, StatusPanelForm);
  Application.Run;
end.
