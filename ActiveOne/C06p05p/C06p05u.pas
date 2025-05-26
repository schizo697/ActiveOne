unit C06p05u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMarsSpeakForm = class(TForm)
    btnTranslate: TButton;
    edtWord: TEdit;
    procedure btnTranslateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MarsSpeakForm: TMarsSpeakForm;

implementation

{$R *.dfm}

procedure TMarsSpeakForm.btnTranslateClick(Sender: TObject);
var
  FirstLetter: Char;
  Word: string;
  I: Integer;
  NewWord: string;
begin
  Word := edtWord.Text;
  NewWord := '';
  if Word <> '' then
  begin
    FirstLetter := UpCase(Word[1]);
    case FirstLetter of
      'A','E','I','O','U' : edtWord.Text := Word + 'way';
      'B'..'D','F'..'H','J'..'N', 'P'..'T','V'..'Z' :
      begin
        for I := Length(Word) downto 1 do
        NewWord := NewWord + Word[I];
        edtWord.Text := NewWord +'ay';
      end;
    else
      Word := '?';
    end;

    if Word = '?' then
    begin
      ShowMessage('Invalid Word!');
    end;
  end
  else
  begin
    ShowMessage('No Word Provided');
  end;
end;

end.
