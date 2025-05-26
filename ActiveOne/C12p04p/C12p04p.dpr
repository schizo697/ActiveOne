program C12p04p;

uses
  Vcl.Forms,
  C12p04u in 'C12p04u.pas' {CurrencyConverterForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCurrencyConverterForm, CurrencyConverterForm);
  Application.Run;
end.
