unit C13p06u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TValidationForm = class(TForm)
    lblCode: TLabel;
    edtCode: TEdit;
    bbtnOk: TBitBtn;
    bbtnClear: TBitBtn;
    lblResult: TLabel;
    procedure bbtnOkClick(Sender: TObject);
    procedure bbtnClearClick(Sender: TObject);
  private
    procedure ReadCode (out A, B, C: Integer);
    function validateCode (const A, B, C: Integer): Boolean;
    procedure ShowAccessResult(const Status: Boolean);
  public
    { Public declarations }
  end;

var
  ValidationForm: TValidationForm;

implementation

{$R *.dfm}

procedure TValidationForm.ShowAccessResult(const Status: Boolean);
begin
  if Status then
  begin
    lblResult.Caption := 'Accepted';
    lblResult.Color := clGreen;
  end
  else
  begin
    lblResult.Caption := 'Denied';
    lblResult.Color := clRed;
  end;
end;

function TValidationForm.validateCode(
  const A: Integer; const B: Integer; const C: Integer): Boolean;
var
  CheckValue: Integer;
begin
  CheckValue := ((103 * A + 17 * B + C) mod 43) - 19;
  Result := (CheckValue = 0);
end;

procedure TValidationForm.ReadCode(out A: Integer; out B: Integer; out C: Integer);
var
  StrValue: String;
begin
  try
  StrValue := edtCode.Text;

  C := StrToInt(StrValue[3]);
  B := StrtoInt(StrValue[2]);
  A := StrToInt(StrValue[1]);
  except
  A := 0;
  B := 0;
  C := 0;
  end;
end;

procedure TValidationForm.bbtnClearClick(Sender: TObject);
begin
  edtCode.Clear;
  lblResult.Caption := '';
  lblResult.Color := clBtnFace;
end;

procedure TValidationForm.bbtnOkClick(Sender: TObject);
var
  A, B, C: Integer;
begin
  ReadCode(A, B, C);
  ShowAccessResult(ValidateCode (A, B, C));
end;

end.
