program C05p06p;

uses
  Vcl.Forms,
  C05p06u in 'C05p06u.pas' {SettingColoursForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSettingColoursForm, SettingColoursForm);
  Application.Run;
end.
