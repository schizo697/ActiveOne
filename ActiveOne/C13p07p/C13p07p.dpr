program C13p07p;

uses
  Vcl.Forms,
  C13p07u in 'C13p07u.pas' {PriceCalculatorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPriceCalculatorForm, PriceCalculatorForm);
  Application.Run;
end.
