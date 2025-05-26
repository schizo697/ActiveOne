unit C07p02u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCharacterInAStringForm = class(TForm)
    lblString: TLabel;
    edtSentence: TEdit;
    lblCharacter: TLabel;
    edtCharacter: TEdit;
    btnCount: TButton;
    lblOccurences: TLabel;
    procedure btnCountClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CharacterInAStringForm: TCharacterInAStringForm;

implementation

{$R *.dfm}

procedure TCharacterInAStringForm.btnCountClick(Sender: TObject);
var
  Sentence: string;
  Target: Char;
  Count: Integer;
  I: Integer;
begin
  Sentence := edtSentence.Text;
  Target := edtCharacter.Text[1];
  Count := 0;

  for I := 1 to Length(Sentence) do
    begin
      if Sentence[I] = Target then
      begin
        Count := Count + 1;
      end;
    end;
  lblOccurences.Caption := IntToStr(Count) + ' occurences';
end;

end.
