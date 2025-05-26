program C12p01p;

uses
  Vcl.Forms,
  C12p01u in 'C12p01u.pas' {AddingMethodCallsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAddingMethodCallsForm, AddingMethodCallsForm);
  Application.Run;
end.
