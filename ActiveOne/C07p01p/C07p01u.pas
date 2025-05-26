unit C07p01u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TPredictingPopulationForm = class(TForm)
    lblPopulation: TLabel;
    edtPopulation: TEdit;
    lblGrowth: TLabel;
    edtGrowth: TEdit;
    bbtnCalculate: TBitBtn;
    lbGrowth: TListBox;
    procedure bbtnCalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PredictingPopulationForm: TPredictingPopulationForm;

implementation

{$R *.dfm}

procedure TPredictingPopulationForm.bbtnCalculateClick(Sender: TObject);
var
  Year: Integer;
  YearEnd: Integer;
  Population: Integer;
  Growth: Integer;
  I: Integer;
begin
  Year := 2003;
  YearEnd := 2020;
  Population := StrToInt(edtPopulation.Text);
  Growth := StrToInt(edtGrowth.Text);

  lbGrowth.Clear;

  for I := Year to YearEnd do
    begin
      lbGrowth.Items.Add(IntToStr(I) + ': ' + IntToStr(Population));
      Population := Population + Growth;
    end;
end;

end.
