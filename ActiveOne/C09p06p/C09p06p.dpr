program C09p06p;

uses
  Vcl.Forms,
  C09p06u in 'C09p06u.pas' {ActionListForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TActionListForm, ActionListForm);
  Application.Run;
end.
