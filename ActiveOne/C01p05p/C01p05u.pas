unit C01p05u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAnotherEnableDisableForm = class(TForm)
    btnClick: TButton;
    btnNot: TButton;
    btnNor: TButton;
    procedure btnClickClick(Sender: TObject);
    procedure btnNotClick(Sender: TObject);
    procedure btnNorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnotherEnableDisableForm: TAnotherEnableDisableForm;

implementation

{$R *.dfm}

procedure TAnotherEnableDisableForm.btnClickClick(Sender: TObject);
begin
  btnClick.Caption := 'Not me';
  btnClick.Enabled := False;
  btnNot.Caption := 'Click me';
  btnNot.Enabled := True;
  btnNor.Caption := 'Close';
  btnNor.Enabled := True;
end;

procedure TAnotherEnableDisableForm.btnNotClick(Sender: TObject);
begin
  btnClick.Enabled := True;
  btnClick.Caption := 'Click me';
  btnNot.Enabled := False;
  btnNot.Caption := 'Not me';
  btnNor.Enabled := False;
  btnNor.Caption := 'Nor me';
end;

procedure TAnotherEnableDisableForm.btnNorClick(Sender: TObject);
begin
 AnotherEnableDisableForm.Close;
end;

end.
