program C08p05p;

uses
  Vcl.Forms,
  C08p05u in 'C08p05u.pas' {RadioGroupOfColorsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRadioGroupOfColorsForm, RadioGroupOfColorsForm);
  Application.Run;
end.
