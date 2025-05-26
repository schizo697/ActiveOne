program C07p06p;

uses
  Vcl.Forms,
  C07p06u in 'C07p06u.pas' {RepeatUntilLoopForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRepeatUntilLoopForm, RepeatUntilLoopForm);
  Application.Run;
end.
