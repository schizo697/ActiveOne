program C10p08p;

uses
  Vcl.Forms,
  C10p08u in 'C10p08u.pas' {UsingParameterForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUsingParameterForm, UsingParameterForm);
  Application.Run;
end.
