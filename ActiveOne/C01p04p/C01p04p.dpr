program C01p04p;

uses
  Vcl.Forms,
  C01p04u in 'C01p04u.pas' {EnableDisableForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TEnableDisableForm, EnableDisableForm);
  Application.Run;
end.
