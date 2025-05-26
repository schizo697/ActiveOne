program C08p07p;

uses
  Vcl.Forms,
  C08p07u in 'C08p07u.pas' {PlayLottoForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPlayLottoForm, PlayLottoForm);
  Application.Run;
end.
