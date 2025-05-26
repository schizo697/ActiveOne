program C10p02p;

uses
  Vcl.Forms,
  C10p02u in 'C10p02u.pas' {HidingForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(THidingForm, HidingForm);
  Application.Run;
end.
