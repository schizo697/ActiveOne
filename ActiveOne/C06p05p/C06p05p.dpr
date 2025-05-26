program C06p05p;

uses
  Vcl.Forms,
  C06p05u in 'C06p05u.pas' {MarsSpeakForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMarsSpeakForm, MarsSpeakForm);
  Application.Run;
end.
