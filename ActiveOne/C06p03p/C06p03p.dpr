program C06p03p;

uses
  Vcl.Forms,
  C06p03u in 'C06p03u.pas' {BursarySchemeForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBursarySchemeForm, BursarySchemeForm);
  Application.Run;
end.
