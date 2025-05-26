unit C07p06u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TRepeatUntilLoopForm = class(TForm)
    lblTimes: TLabel;
    speTimes: TSpinEdit;
    gbPayouts: TGroupBox;
    lbPayouts: TListBox;
    btnStart: TButton;
    gbAverage: TGroupBox;
    lblAverage: TLabel;
    procedure btnStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepeatUntilLoopForm: TRepeatUntilLoopForm;

implementation

{$R *.dfm}

procedure TRepeatUntilLoopForm.btnStartClick(Sender: TObject);
var
  NoOfTosses: Integer;
  Count: Integer;
  NoOfGames: Integer;
  Toss: Integer;
  Payout: Double;
  TotalPayout: Double;
  AveragePayout: Double;
begin
  lbPayouts.Clear;
  NoOfGames := speTimes.Value;

  if NoOfGames <= 0 then
  begin
    MessageDlg('Invalid # of games!', mtWarning, [mbOK], 0);
    exit;
  end;

  Count := 0;
  TotalPayout := 0;
  Randomize;

  repeat
    NoOfTosses := 1;
    Toss := Random(2);
    while Toss = 1 do
    begin
      Toss := Random(2);
      NoOfTosses := NoOfTosses + 1;
    end;
    Payout := NoOfTosses * 5;
    lbPayouts.Items.Add('R ' + FloatToStrF(Payout, ffFixed, 10,2));
    TotalPayout := TotalPayout + Payout;
    Count := Count + 1;
  until Count = NoOfGames;

  AveragePayout := TotalPayout / NoOfGames;
  lblAverage.Caption := FloatToStrF(AveragePayout, ffFixed, 10,2);

end;
end.
