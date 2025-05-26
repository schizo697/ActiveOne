unit C10p08u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TUsingParameterForm = class(TForm)
    tmTimer: TTimer;
    lblTimer: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure tmTimerTimer(Sender: TObject);
  private
    procedure AppMessage(var Msg: TMsg; var Handled: Boolean);
  public
    { Public declarations }
  end;

var
  UsingParameterForm: TUsingParameterForm;

implementation

{$R *.dfm}

procedure TUsingParameterForm.AppMessage(var Msg: TMsg; var Handled: Boolean);
var
  TargetControl: TControl;
begin
  TargetControl := FindVCLWindow(Mouse.CursorPos);

  case Msg.message of
    WM_RBUTTONUP:
      if (TargetControl <> nil) and (TargetControl = Self) then
      begin
       tmTimer.Enabled := False;
      end;

    WM_RBUTTONDOWN:
      if (TargetControl <> nil) and (TargetControl = Self) then
      begin
        tmTimer.Enabled := True;
        lblTimer.Caption := 'Timer: ' + TimeToStr(Time);
      end;
  end;
end;

procedure TUsingParameterForm.FormCreate(Sender: TObject);
begin
  Application.OnMessage := AppMessage;
  lblTimer.Caption := 'Timer: ' + TimeToStr(Time);
  tmTimer.Interval := 1000;
  tmTimer.Enabled := False;
end;


procedure TUsingParameterForm.tmTimerTimer(Sender: TObject);
begin
  lblTimer.Caption := 'Timer: ' + TimeToStr(Time);
end;

end.
