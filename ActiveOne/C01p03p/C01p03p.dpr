program C01p03p;

uses
  Vcl.Forms,
  C01p03u in 'C01p03u.pas' {ChangingCaptionForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TChangingCaptionForm, ChangingCaptionForm);
  Application.Run;
end.
