program C08p04p;

uses
  Vcl.Forms,
  C08p04u in '..\C08p04\C08p04u.pas' {ComboBoxOfColorsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TComboBoxOfColorsForm, ComboBoxOfColorsForm);
  Application.Run;
end.
