unit C08p03u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAddingCitiesForm = class(TForm)
    lblFrom: TLabel;
    cbFrom: TComboBox;
    lblTo: TLabel;
    cbTo: TComboBox;
    btnShow: TButton;
    lblDistance: TLabel;
    procedure btnShowClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddingCitiesForm: TAddingCitiesForm;

implementation

{$R *.dfm}
const
  NoOfCities = 6;
  Cities: array[1..NoOfCities] of string =
  ('Durban', 'Cape Town', 'Johannesburg', 'Pretoria',
     'Bloemfontein', 'Port Elizabeth');
  aDistances: array[1..NoOfCities, 1..NoOfCities]  of Integer =
  ((0, 1660, 592, 656, 667, 927),
   (1660,0,1405,1463, 998, 756),
   (598, 1405, 0, 56, 417, 1062),
   (656, 1464, 56, 0, 475, 1120),
   (667, 998, 417, 475, 0, 635),
   (927, 756, 1062, 1120, 635, 0));

procedure TAddingCitiesForm.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  for I  := 1 to NoOfCities do
    begin
      cbFrom.Items.Add(Cities[I]);
      cbTo.Items.Add(Cities[I]);
    end;
    cbFrom.ItemIndex := 0;
    cbTo.ItemIndex := 0;
end;

procedure TAddingCitiesForm.btnShowClick(Sender: TObject);
var
 FromCity: Integer;
 ToCity: Integer;
begin
  FromCity := cbFrom.ItemIndex + 1;
  ToCity := cbTo.ItemIndex + 1;

  lblDistance.Caption := IntToStr(aDistances[FromCity, ToCity]) + ' Km';

end;



end.
