program C12p08p;

uses
  Vcl.Forms,
  C12p08u in 'C12p08u.pas' {SalespersonsCommission};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSalespersonsCommission, SalespersonsCommission);
  Application.Run;
end.
