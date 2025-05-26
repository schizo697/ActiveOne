unit C08p02u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TTestResultsForm = class(TForm)
    lblTotal: TLabel;
    edtTotal: TEdit;
    lblMarks: TLabel;
    memMarks: TMemo;
    btnSummary: TButton;
    gbSummary: TGroupBox;
    lblHighest: TLabel;
    lblAverage: TLabel;
    lblPassed: TLabel;
    procedure btnSummaryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TestResultsForm: TTestResultsForm;

implementation

{$R *.dfm}


procedure TTestResultsForm.btnSummaryClick(Sender: TObject);
var
  Percentage: array of Double;
  I: Integer;
  NoOfMarks: Integer;
  TestTotal: Integer;
  NumPassed: Integer;
  ValidCount: Integer;
  Sum: Double;
  Highest: Double;
  Average: Double;
begin
  NoOfMarks := memMarks.Lines.Count;
  Sum := 0;
  ValidCount := 0;
  Highest := 0;
  NumPassed := 0;
  for I := 0 to NoOfMarks - 1 do
  begin
    if Trim(memMarks.Lines[I]) <> '' then
    begin
      SetLength(Percentage, NoOfMarks);
      TestTotal := StrToInt(edtTotal.Text);

      Percentage[I] := StrToInt(memMarks.Lines[I]) / TestTotal * 100;

      Sum := Sum + Percentage[I];
      ValidCount := ValidCount + 1;

      if Percentage[I] > Highest then
      begin
        Highest := Percentage[I];
      end;

      if Percentage[I] >= 50 then
      begin
        NumPassed := NumPassed + 1;
      end;
    end;
  end;

  Average := Sum / ValidCount;
    lblHighest.Caption := 'Highest percentage ' +
    FloatToStrF(Highest, ffFixed, 12,0) + '%';

  lblAverage.Caption := 'Average percentage ' +
   FloatToStrF(Average, ffFixed, 12,0) + '%';

  lblPassed.Caption := 'Number passed ' +
    FloatToStrF(NumPassed, ffFixed, 12,0);
end;

end.
