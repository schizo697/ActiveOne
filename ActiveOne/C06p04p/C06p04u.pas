unit C06p04u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TDaysInMonthForm = class(TForm)
    lblMonthNumber: TLabel;
    speMonthNumber: TSpinEdit;
    btnDisplay: TButton;
    lblMessage: TLabel;
    procedure btnDisplayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DaysInMonthForm: TDaysInMonthForm;

implementation

{$R *.dfm}

procedure TDaysInMonthForm.btnDisplayClick(Sender: TObject);
var
  ThirtyOneDays: array of Integer;
  ThirtyDays: array of Integer;
  Number: Integer;
  February: Integer;
  I: Integer;
  FoundThirtyOne: Boolean;
  FoundThirty: Boolean;
begin
  ThirtyOneDays := [1,3,5,7,8,10,12];
  ThirtyDays := [4,6,9,11];
  February := 2;
  Number := speMonthNumber.Value;
  FoundThirtyOne := False;
  FoundThirty := False;

  for I := Low(ThirtyOneDays) to High(ThirtyOneDays) do
    if ThirtyOneDays[I] = Number then
    begin
      FoundThirtyOne := True;
  end;

  for I := Low(ThirtyDays) to High(ThirtyDays) do
    if ThirtyDays[I] = Number then
    begin
      FoundThirty := True;
    end;

  if FoundThirtyOne then
  begin
    lblMessage.Caption := 'There are 31 days on this month';
  end;

    if FoundThirty then
  begin
    lblMessage.Caption := 'There are 30 days on this month';
  end;

  if Number = February then
  begin
    if MessageDlg('Is this a leap year?', mtConfirmation, [mbYes, mbNo], 0)
    = mrYes then
    begin
      lblMessage.Caption := 'There are 29 days on this month';
    end
    else
    begin
      lblMessage.Caption := 'There are 28 days on this month';
    end;
  end;

end;

end.
