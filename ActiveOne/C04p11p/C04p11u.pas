unit C04p11u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TCalculateRoomArea = class(TForm)
    lblLength: TLabel;
    lblWidth: TLabel;
    spnLength: TSpinEdit;
    spnWidth: TSpinEdit;
    btnCalculate: TButton;
    btnReset: TButton;
    lblArea: TLabel;
    procedure btnCalculateClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CalculateRoomArea: TCalculateRoomArea;

implementation

{$R *.dfm}

procedure TCalculateRoomArea.btnCalculateClick(Sender: TObject);
var
  aLength: double;
  aWidth: double;
  aArea: double;
begin
  aLength := spnLength.Value;
  aWidth := spnWidth.Value;
  aArea := aWidth * aLength;
  lblArea.Caption := 'Area = ' + FloatToStr(AArea);
end;

procedure TCalculateRoomArea.btnResetClick(Sender: TObject);
begin
  spnLength.Value := 0;
  spnWidth.Value := 0;
  lblArea.Caption := '';
end;

end.
