program C04p09p;

uses
  Vcl.Forms,
  C04p09u in 'C04p09u.pas' {MultipleCurrenciesCalculator};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMultipleCurrenciesCalculator, MultipleCurrenciesCalculator);
  Application.Run;
end.
