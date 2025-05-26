program C08p03p;

uses
  Vcl.Forms,
  C08p03u in 'C08p03u.pas' {AddingCitiesForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAddingCitiesForm, AddingCitiesForm);
  Application.Run;
end.
