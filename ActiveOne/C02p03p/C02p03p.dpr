program C02p03p;

uses
  Vcl.Forms,
  C02p03u in 'C02p03u.pas' {SixpenceJoesFamilySupermarket};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSixpenceJoesFamilySupermarket, SixpenceJoesFamilySupermarket);
  Application.Run;
end.
