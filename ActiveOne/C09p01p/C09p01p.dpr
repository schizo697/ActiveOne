program C09p01p;

uses
  Vcl.Forms,
  C09p01u in 'C09p01u.pas' {DeleteNamesForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDeleteNamesForm, DeleteNamesForm);
  Application.Run;
end.
