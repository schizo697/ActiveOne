unit C10p02u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  THidingForm = class(TForm)
    btnHide: TButton;
    tmTimer: TTimer;
    procedure btnHideClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmTimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HidingForm: THidingForm;

implementation

{$R *.dfm}

procedure THidingForm.btnHideClick(Sender: TObject);
begin
  btnHide.Visible := False;
  tmTimer.Enabled := True;
  ShowMessage('Form about to disappear');
end;

procedure THidingForm.FormCreate(Sender: TObject);
begin
  tmTimer.Enabled := False;
  tmTimer.Interval := 2000;
end;

procedure THidingForm.FormShow(Sender: TObject);
begin
  ShowMessage('Form is about to appear');
end;

procedure THidingForm.tmTimerTimer(Sender: TObject);
begin
  tmTimer.Enabled := False;
  btnHide.Visible := True;
  HidingForm.Close;
end;

end.
