program C08p08p;

uses
  Vcl.Forms,
  C08p08u in 'C08p08u.pas' {RaceHistoryForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRaceHistoryForm, RaceHistoryForm);
  Application.Run;
end.
