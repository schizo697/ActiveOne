program C07p02p;

uses
  Vcl.Forms,
  C07p02u in 'C07p02u.pas' {CharacterInAStringForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCharacterInAStringForm, CharacterInAStringForm);
  Application.Run;
end.
