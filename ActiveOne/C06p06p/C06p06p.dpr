program C06p06p;

uses
  Vcl.Forms,
  C06p06u in 'C06p06u.pas' {GrammarCheckForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGrammarCheckForm, GrammarCheckForm);
  Application.Run;
end.
