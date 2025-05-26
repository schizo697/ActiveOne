unit C14p03u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TJoesAirlinesEmailForm = class(TForm)
    gbFirstname: TGroupBox;
    edtFirstName: TEdit;
    gbLastName: TGroupBox;
    edtLastName: TEdit;
    bbtnGenerate: TBitBtn;
    bbtnReset: TBitBtn;
    lblEmail: TLabel;
    procedure bbtnGenerateClick(Sender: TObject);
    procedure bbtnResetClick(Sender: TObject);
  private
    function GenerateEmail(FirstName, LastName: String): String;
  public
    { Public declarations }
  end;

var
  JoesAirlinesEmailForm: TJoesAirlinesEmailForm;

implementation

{$R *.dfm}

function TJoesAirlinesEmailForm.GenerateEmail(FirstName: string;
  LastName: string): string;
var
  FixedFirst: String;
  FixedLast: String;
begin
  if Length(FirstName) < 3 then
  begin
    FixedFirst := FirstName + 'x'
  end
  else
  begin
    FixedFirst := Copy(FirstName, 1, 3);
  end;

  if Length(LastName) < 3 then
  begin
    FixedLast := LastName + 'x'
  end
  else
  begin
    FixedLast := Copy(LastName, 1, 3);
  end;

  Result := LowerCase(FixedFirst + FixedLast + '@joesair.com');
end;

procedure TJoesAirlinesEmailForm.bbtnGenerateClick(Sender: TObject);
var
  FirstName: String;
  LastName: String;
  Email: String;
begin
  FirstName := edtFirstName.Text;
  LastName := edtLastName.Text;
  Email := GenerateEmail(LastName, FirstName);

  lblEmail.Caption := 'Your Email is: ' + Email;
end;

procedure TJoesAirlinesEmailForm.bbtnResetClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do
    if Self.Components[i] is TEdit then
    begin
      TEdit(Self.Components[i]).Clear;
    end;
  edtFirstName.SetFocus;
  lblEmail.Caption := 'Your Email is: ';
end;

end.
