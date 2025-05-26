program C09p03p;

uses
  Vcl.Forms,
  C09p03u in 'C09p03u.pas' {AdditionTesterForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAdditionTesterForm, AdditionTesterForm);
  Application.Run;
end.
