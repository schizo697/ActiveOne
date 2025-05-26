program C03p05p;

uses
  Vcl.Forms,
  C03p05u in 'C03p05u.pas' {Concatenating};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TConcatenating, Concatenating);
  Application.Run;
end.
