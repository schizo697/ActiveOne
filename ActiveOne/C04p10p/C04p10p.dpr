program C04p10p;

uses
  Vcl.Forms,
  C04p10u in 'C04p10u.pas' {CircusAdmissionPriceCalculator2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCircusAdmissionPriceCalculator2, CircusAdmissionPriceCalculator2);
  Application.Run;
end.
