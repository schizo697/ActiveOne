program C07p03p;

uses
  Vcl.Forms,
  C07p03u in 'C07p03u.pas' {ASavingsAccountForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TASavingsAccountForm, ASavingsAccountForm);
  Application.Run;
end.
