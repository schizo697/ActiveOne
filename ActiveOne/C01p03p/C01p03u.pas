unit C01p03u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TChangingCaptionForm = class(TForm)
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
  ChangingCaptionForm: TChangingCaptionForm;

implementation

{$R *.dfm}

procedure TChangingCaptionForm.btnFirstClick(Sender: TObject);
begin
  btnSecond.Caption := 'Close';
end;

procedure TChangingCaptionForm.btnSecondClick(Sender: TObject);
begin
  ChangingCaptionForm.Close;
end;

end.
