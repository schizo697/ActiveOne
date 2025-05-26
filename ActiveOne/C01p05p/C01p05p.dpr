program C01p05p;

uses
  Vcl.Forms,
  C01p05u in 'C01p05u.pas' {AnotherEnableDisableForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAnotherEnableDisableForm, AnotherEnableDisableForm);
  Application.Run;
end.
