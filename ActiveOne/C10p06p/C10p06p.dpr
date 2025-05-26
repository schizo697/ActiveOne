program C10p06p;

uses
  Vcl.Forms,
  C10p06u in 'C10p06u.pas' {DrawingEllipsesForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDrawingEllipsesForm, DrawingEllipsesForm);
  Application.Run;
end.
