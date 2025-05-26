unit C10p08u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TUsingParameterForm = class(TForm)
    tmTimer: TTimer;
    lblTimer: TLabel;
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsingParameterForm: TUsingParameterForm;

implementation

{$R *.dfm}

procedure TUsingParameterForm.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    tmTimer.Enabled := False;
  end;
end;

procedure TUsingParameterForm.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    tmTimer.Enabled := True;
    lblTimer.Caption := 'Timer: ' + TimeToStr(Time);
  end;
end;

end.
