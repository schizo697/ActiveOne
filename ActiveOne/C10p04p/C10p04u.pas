unit C10p04u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TStatusPanelForm = class(TForm)
    pnlCentral: TPanel;
    pnlStatus: TPanel;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure pnlStatusMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnlCentralMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StatusPanelForm: TStatusPanelForm;

implementation

{$R *.dfm}

procedure TStatusPanelForm.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  pnlStatus.Caption := 'Over the Form';
end;

procedure TStatusPanelForm.pnlCentralMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlStatus.Caption := 'Inside Central Panel';
end;

procedure TStatusPanelForm.pnlStatusMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlStatus.Caption := 'Status Panel';
end;

end.
