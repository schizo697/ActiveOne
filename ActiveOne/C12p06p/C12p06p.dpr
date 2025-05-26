program C12p06p;

uses
  Vcl.Forms,
  C12p06u in 'C12p06u.pas' {StudyGroupsForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TStudyGroupsForm, StudyGroupsForm);
  Application.Run;
end.
