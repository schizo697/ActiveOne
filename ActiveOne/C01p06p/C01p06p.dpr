program C01p06p;

uses
  Vcl.Forms,
  C01p06u in 'C01p06u.pas' {ChangingWindowStateForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TChangingWindowStateForm, ChangingWindowStateForm);
  Application.Run;
end.
