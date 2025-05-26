unit C08p08u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Math, DateUtils, StrUtils;

type
  TRaceHistoryForm = class(TForm)
    lblHistory: TLabel;
    memHistory: TMemo;
    btnLoad: TButton;
    btnSave: TButton;
    btnReset: TButton;
    btnClose: TButton;
    gbSummary: TGroupBox;
    lblBest: TLabel;
    lblTotal: TLabel;
    btnCalculate: TButton;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RaceHistoryForm: TRaceHistoryForm;

implementation

{$R *.dfm}


procedure TRaceHistoryForm.btnCalculateClick(Sender: TObject);
var
  Parts: TArray<string>;
  Time: TDateTime;
  BestTime: TDateTime;
  I: Integer;
  Line: string;
  Name: string;
  NameWithBestPace: string;
  Distance: Double;
  TotalDistance: Double;
  Minutes: Double;
  Pace: Double;
  BestPace: Double;
begin
  TotalDistance := 0;
  BestPace := MaxDouble;
  NameWithBestPace := '';

  for I := 0 to memHistory.Lines.Count - 1 do
  begin
    Line := Trim(memHistory.Lines[I]);
    if Line = '' then Continue;

    Parts := SplitString(Line, ',');

    if Length(Parts) < 3 then Continue;

    Name := Trim(Parts[0]);
    Distance := StrToFloatDef(Trim(Parts[1]), 0);
    Time := StrToTime(Trim(Parts[2]));

    Minutes := HourOf(Time) * 60 + MinuteOf(Time) + SecondOf(Time) / 60;

    Pace := Minutes / Distance;

    TotalDistance := TotalDistance + Distance;

    if Pace < BestPace then
    begin
      BestPace := Pace;
      NameWithBestPace := Name;
    end;
    lblBest.Caption := 'Best Time: ' + FloatToStrF(BestPace, ffFixed, 8, 2) +
    ' mins/km ' + '[' + NameWithBestPace + ']';
    lblTotal.Caption := 'Total Distsance: ' +
      FloatToStrF(TotalDistance, ffFixed, 8, 2);
  end;
end;

procedure TRaceHistoryForm.btnCloseClick(Sender: TObject);
begin
  RaceHistoryForm.Close;
end;

procedure TRaceHistoryForm.btnLoadClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    memHistory.Lines.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TRaceHistoryForm.btnResetClick(Sender: TObject);
begin
  memHistory.Lines.Clear;
end;

procedure TRaceHistoryForm.btnSaveClick(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    memHistory.Lines.SaveToFile(SaveDialog.FileName);
  end;
end;

end.
