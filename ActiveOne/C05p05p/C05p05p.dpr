program C05p05p;

uses
  Vcl.Forms,
  C05p05u in 'C05p05u.pas' {SupaDupaSalesForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSupaDupaSalesForm, SupaDupaSalesForm);
  Application.Run;
end.
