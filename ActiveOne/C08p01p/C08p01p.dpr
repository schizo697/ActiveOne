program C08p01p;

uses
  Vcl.Forms,
  C08p01u in 'C08p01u.pas' {PalindromeForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPalindromeForm, PalindromeForm);
  Application.Run;
end.
