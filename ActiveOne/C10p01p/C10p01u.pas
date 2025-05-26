unit C10p01u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TDoubleClickingForm = class(TForm)
    procedure FormDblClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DoubleClickingForm: TDoubleClickingForm;

implementation

{$R *.dfm}

procedure TDoubleClickingForm.FormDblClick(Sender: TObject);
begin
  DoubleClickingForm.Color := clRed;
end;

procedure TDoubleClickingForm.FormClick(Sender: TObject);
begin
  DoubleClickingForm.Color := clBtnFace;
end;

end.
