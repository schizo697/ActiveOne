program C09p04p;

uses
  Vcl.Forms,
  C09p04u in 'C09p04u.pas' {ActionListForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TActionListForm, ActionListForm);
  Application.Run;
end.
