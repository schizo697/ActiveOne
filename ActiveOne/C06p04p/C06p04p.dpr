program C06p04p;

uses
  Vcl.Forms,
  C06p04u in 'C06p04u.pas' {DaysInMonthForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDaysInMonthForm, DaysInMonthForm);
  Application.Run;
end.
