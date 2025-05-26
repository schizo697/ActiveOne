unit C06p06u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TGrammarCheckForm = class(TForm)
    lblSentence: TLabel;
    edtSentence: TEdit;
    btnCheck: TButton;
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GrammarCheckForm: TGrammarCheckForm;

implementation

{$R *.dfm}

procedure TGrammarCheckForm.btnCheckClick(Sender: TObject);
var
  Sentence: string;
  LowerSentence: string;
  Vowel: string;
  APos: Integer;
  AnPos: Integer;
  NextWordStart: Integer;
  SpacePos: Integer;
begin
  Sentence := Trim(edtSentence.Text);

  if Sentence.IsEmpty then
  begin
    MessageDlg('Please Enter a Sentence!', mtInformation, [mbOK], 0);
    Exit;
  end;
  LowerSentence := ' ' + LowerCase(Sentence) + ' ';

  APos := Pos(' a ', LowerSentence);
  AnPos := Pos(' an ', LowerSentence);

  if (APos = 0) and (AnPos = 0) then
  begin
    MessageDlg('No indefinite article used', mtInformation, [mbOK], 0);
    Exit;
  end;

  if APos > 0  then
  begin
    NextWordStart := APos + 3;
    SpacePos := Pos(' ', Copy(LowerSentence, NextWordStart,
    Length(LowerSentence)));
   Vowel := Copy(LowerSentence, NextWordStart, SpacePos - 1);

   if (Vowel <> '')  and (Vowel[1] in ['a','e','i','o','u']) then
   begin
     MessageDlg('Replace ''a'' with ''an''', mtError, [mbOK], 0);
   end
   else
   begin
     MessageDlg('''a'' used correctly', mtInformation, [mbOK], 0);
   end;
  end;

   if AnPos > 0 then
   begin
     NextWordStart := AnPos + 4;
     SpacePos := Pos(' ', Copy(LowerSentence, NextWordStart,
     Length(LowerSentence)));
     Vowel := Copy(LowerSentence, NextWordStart, SpacePos - 1);

     if (Vowel <> '') and not (Vowel[1] in ['a','e','i','o','u']) then
     begin
        MessageDlg('Replace ''an'' with ''a''', mtError, [mbOK], 0);
     end
     else
     begin
        MessageDlg('''an'' use correnctly', mtInformation, [mbOK] ,0);
     end;
   end;
end;

end.
