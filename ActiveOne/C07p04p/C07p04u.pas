unit C07p04u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TWordCounterForm = class(TForm)
    lblSentence: TLabel;
    edtSentence: TEdit;
    btnCount: TButton;
    procedure btnCountClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WordCounterForm: TWordCounterForm;

implementation

{$R *.dfm}

procedure TWordCounterForm.btnCountClick(Sender: TObject);
var
  Sentence: string;
  I: Integer;
  WordCount: Integer;
begin
  Sentence := Trim(edtSentence.Text);
  I := 1;
  WordCount := 0;

  while I <= Length(Sentence) do
  begin

    while (I <= Length(Sentence)) and (Sentence[I] = ' ') do
      I := I + 1;

    if (I <= Length(Sentence)) and (Sentence[I] <> ' ') then
    begin
      WordCount := WordCount + 1;

      while (I <= Length(Sentence)) and (Sentence[I] <> ' ') do
        I := I + 1;
    end;
  end;

  MessageDlg('Word Count: ' + IntToStr(WordCount), mtInformation, [mbOK], 0);
end;

end.
