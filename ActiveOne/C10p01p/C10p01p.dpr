program C10p01p;

uses
  Vcl.Forms,
  C10p01u in 'C10p01u.pas' {DoubleClickingForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDoubleClickingForm, DoubleClickingForm);
  Application.Run;
end.
