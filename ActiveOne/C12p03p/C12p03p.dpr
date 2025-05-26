program C12p03p;

uses
  Vcl.Forms,
  C12p03u in 'C12p03u.pas' {FamilyCircusForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFamilyCircusForm, FamilyCircusForm);
  Application.Run;
end.
