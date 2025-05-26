program C05p03p;

uses
  Vcl.Forms,
  C05p03u in 'C05p03u.pas' {HeartRateForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(THeartRateForm, HeartRateForm);
  Application.Run;
end.
