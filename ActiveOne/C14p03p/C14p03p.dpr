program C14p03p;

uses
  Vcl.Forms,
  C14p03u in 'C14p03u.pas' {JoesAirlinesEmailForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TJoesAirlinesEmailForm, JoesAirlinesEmailForm);
  Application.Run;
end.
