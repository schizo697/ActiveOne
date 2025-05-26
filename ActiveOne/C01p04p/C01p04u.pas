unit C01p04u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TEnableDisableForm = class(TForm)
    btnFirst: TButton;
    btnSecond: TButton;
    procedure btnFirstClick(Sender: TObject);
    procedure btnSecondClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EnableDisableForm: TEnableDisableForm;

implementation

{$R *.dfm}

procedure TEnableDisableForm.btnFirstClick(Sender: TObject);
begin
  btnSecond.Enabled := True;
  btnFirst.Enabled := False;
  btnSecond.Caption := 'Close';
end;

procedure TEnableDisableForm.btnSecondClick(Sender: TObject);
begin
  EnableDisableForm.Close;
end;

end.
