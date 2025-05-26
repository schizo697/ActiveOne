program C06p02p;

uses
  Vcl.Forms,
  C06p02u in 'C06p02u.pas' {PutsOnderWaterForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPutsOnderWaterForm, PutsOnderWaterForm);
  Application.Run;
end.
