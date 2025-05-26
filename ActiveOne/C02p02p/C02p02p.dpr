program C02p02p;

uses
  Vcl.Forms,
  C02p02u in 'C02p02u.pas' {MultipleTextDisplays};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMultipleTextDisplays, MultipleTextDisplays);
  Application.Run;
end.
