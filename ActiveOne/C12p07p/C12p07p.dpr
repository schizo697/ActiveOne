program C12p07p;

uses
  Vcl.Forms,
  C12p07u in 'C12p07u.pas' {StudentLoanRepaymentForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TStudentLoanRepaymentForm, StudentLoanRepaymentForm);
  Application.Run;
end.
