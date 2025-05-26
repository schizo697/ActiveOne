program C04p12p;

uses
  Vcl.Forms,
  C04p12u in 'C04p12u.pas' {CarpetingCostForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCarpetingCostForm, CarpetingCostForm);
  Application.Run;
end.
