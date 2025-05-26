unit C08p05u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TRadioGroupOfColorsForm = class(TForm)
    rgColors: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure rgColorsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RadioGroupOfColorsForm: TRadioGroupOfColorsForm;

implementation

{$R *.dfm}

const
  DelphiColors: array[0..7] of Integer = (clMaroon, clGreen, clNavy,
  clPurple, clRed, clBlue, clFuchsia, clAqua);
  ColorNames: array[0..7] of string = ('Maroon', 'Green', 'Navy',
  'Purple', 'Red', 'Blue', 'Fuchsia', 'Aqua');

procedure TRadioGroupOfColorsForm.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  rgColors.Items.Clear;
  for I := 0 to High(ColorNames) do
  begin
    rgColors.Items.Add(ColorNames[I]);
  end;
end;

procedure TRadioGroupOfColorsForm.rgColorsClick(Sender: TObject);
begin
  if rgColors.ItemIndex <> - 1 then
  RadioGroupOfColorsForm.Color := DelphiColors[rgColors.ItemIndex];
end;

end.
