program C05p04p;

uses
  Vcl.Forms,
  C05p04u in 'C05p04u.pas' {CourseResultForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCourseResultForm, CourseResultForm);
  Application.Run;
end.
