program C09p05p;

uses
  Vcl.Forms,
  C09p05u in 'C09p05u.pas' {ActionListForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TActionListForm, ActionListForm);
  Application.Run;
end.
