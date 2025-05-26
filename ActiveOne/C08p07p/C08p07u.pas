unit C08p07u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TPlayLottoForm = class(TForm)
    btnPlay: TButton;
    btnReset: TButton;
    gbResult: TGroupBox;
    gbNumbers: TGroupBox;
    speNum1: TSpinEdit;
    speNum2: TSpinEdit;
    speNum3: TSpinEdit;
    speNum4: TSpinEdit;
    speNum5: TSpinEdit;
    speNum6: TSpinEdit;
    lblResult: TLabel;
    lblPayout: TLabel;
    procedure btnResetClick(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlayLottoForm: TPlayLottoForm;

implementation

{$R *.dfm}

procedure TPlayLottoForm.btnPlayClick(Sender: TObject);
const
  Payout = 2.50;
var
  UserNum: array[1..6] of Integer;
  DrawNum: array[1..6] of Integer;
  I: Integer;
  J: Integer;
  MatchCount: Integer;
  IsDuplicate: Boolean;
  Winnings: Double;
  AResult: string;
begin
  UserNum[1] := speNum1.Value;
  UserNum[2] := speNum2.Value;
  UserNum[3] := speNum3.Value;
  UserNum[4] := speNum4.Value;
  UserNum[5] := speNum5.Value;
  UserNum[6] := speNum6.Value;


  Randomize;
  for I := 1 to 6 do
  begin

    if UserNum[I] > 20 then
    begin
      MessageDlg('Only 1-20', mtWarning, [mbOK], 0);
      Exit;
    end
    else if UserNum[I] = 0 then
    begin
      MessageDlg('Invalid Number', mtWarning, [mbOK], 0);
      Exit;
    end;

    repeat
      IsDuplicate := False;
      DrawNum[I] := Random(20) + 1;
      for J := 1 to I - 1 do
      if DrawNum[I] = DrawNum[J] then
      begin
        IsDuplicate := True;
      end;
    until not IsDuplicate;
  end;

  MatchCount := 0;
  for I := 1 to 6 do
  begin
    for J := 1 to 6 do
      begin
        if UserNum[I] = DrawNum[J] then
        MatchCount := MatchCount + 1;
      end;
  end;

  Winnings := MatchCount * Payout;
  AResult := '';
  for I := 1 to 6 do
  begin
    AResult := AResult + IntToStr(DrawNum[I]) + ' ';
  end;
  lblResult.Caption :=Trim(AResult);
  lblPayout.Caption := 'Payout: ' + FloatToStrF(Winnings, ffFixed, 15, 2);

end;

procedure TPlayLottoForm.btnResetClick(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to gbNumbers.ControlCount - 1 do
  begin
    if gbNumbers.Controls[i] is TSpinEdit then
    begin
      TSPinEdit(gbNumbers.Controls[i]).Value := 0;
    end;
  end;

  for i := 0 to gbResult.ControlCount - 1 do
  begin
    if gbResult.Controls[i] is TLabel then
    begin
      TLabel(gbResult.Controls[i]).Caption := '';
    end;
  end;
end;

end.
