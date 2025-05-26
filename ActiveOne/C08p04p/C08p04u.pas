unit C08p04u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TComboBoxOfColorsForm = class(TForm)
    lblColors: TLabel;
    cbColors: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbColorsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComboBoxOfColorsForm: TComboBoxOfColorsForm;

implementation

{$R *.dfm}

const
  ColorName: array[0..7] of string = ('Maroon', 'Green', 'Navy',
  'Purple', 'Red', 'Blue', 'Fuchsia', 'Aqua');
  aDelphiColours: array[0..7] of integer = (clMaroon, clGreen, clNavy,
  clPurple, clRed, clBlue, clFuchsia, clAqua);


procedure TComboBoxOfColorsForm.cbColorsChange(Sender: TObject);
begin
  if cbColors.ItemIndex <> -1 then
  begin
    ComboBoxOfColorsForm.Color := aDelphiColours[cbColors.ItemIndex];
  end;
end;

procedure TComboBoxOfColorsForm.FormCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to High(ColorName) do
  begin
    cbColors.Items.Add(ColorName[i]);
  end;
  cbColors.ItemIndex := 0;
end;

end.
