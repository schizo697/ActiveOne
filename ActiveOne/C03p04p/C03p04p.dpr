program C03p04p;

uses
  Vcl.Forms,
  C03p04u in 'C03p04u.pas' {Redone};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TRedone, Redone);
  Application.Run;
end.
