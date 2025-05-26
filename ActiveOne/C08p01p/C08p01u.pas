unit C08p01u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TPalindromeForm = class(TForm)
    lblWord: TLabel;
    edtWord: TEdit;
    btnCheck: TButton;
    procedure btnCheckClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PalindromeForm: TPalindromeForm;

implementation

{$R *.dfm}

procedure TPalindromeForm.btnCheckClick(Sender: TObject);
var
  Word: string;
  NewWord: string;
  I: Integer;
begin
  Word := edtWord.Text;
  NewWord := '';

  for I := Length(Word) downto 1 do
  begin
    NewWord := NewWord + Word[I];
  end;

  if Word = NewWord then
  begin
    MessageDlg('Is Palindrome', mtInformation, [mbOK], 0);
  end
  else
  begin
    MessageDlg('Is not a Palindrome', mtInformation, [mbOK], 0);
  end;
end;

end.
