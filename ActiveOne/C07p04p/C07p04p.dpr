program C07p04p;

uses
  Vcl.Forms,
  C07p04u in 'C07p04u.pas' {WordCounterForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TWordCounterForm, WordCounterForm);
  Application.Run;
end.
