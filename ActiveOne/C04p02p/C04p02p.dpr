program C04p02p;

uses
  Vcl.Forms,
  C04p02u in 'C04p02u.pas' {CircusAdmissionPriceCalculator1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCircusAdmissionPriceCalculator1, CircusAdmissionPriceCalculator1);
  Application.Run;
end.
