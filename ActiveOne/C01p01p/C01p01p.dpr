program C01p01p;

uses
  Vcl.Forms,
  C01p01u in 'C01p01u.pas' {ChangingSizeForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TChangingSizeForm, ChangingSizeForm);
  Application.Run;
end.
