program C01p02p;

uses
  Vcl.Forms,
  C01p02u in 'C01p02u.pas' {ChangingDimensionForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TChangingDimensionForm, ChangingDimensionForm);
  Application.Run;
end.
