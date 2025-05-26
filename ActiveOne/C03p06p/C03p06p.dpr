program C03p06p;

uses
  Vcl.Forms,
  C03p06u in 'C03p06u.pas' {Captions};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCaptions, Captions);
  Application.Run;
end.
