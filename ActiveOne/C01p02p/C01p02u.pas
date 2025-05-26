unit C01p02u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TChangingDimensionForm = class(TForm)
    btnSmall: TButton;
    btnBig: TButton;
    procedure btnSmallClick(Sender: TObject);
    procedure btnBigClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangingDimensionForm: TChangingDimensionForm;

implementation

{$R *.dfm}

procedure TChangingDimensionForm.btnSmallClick(Sender: TObject);
begin
  ChangingDimensionForm.Height := 200;
  ChangingDimensionForm.Width := 130;
  btnSmall.Height := 30;
  btnSmall.Width := 75;
  btnBig.Height := 30;
  btnBig.Width := 75;
end;

procedure TChangingDimensionForm.btnBigClick(Sender: TObject);
begin
  ChangingDimensionForm.Height := 300;
  ChangingDimensionForm.Width := 400;
  btnSmall.Height := 60;
  btnSmall.Width := 120;
  btnBig.Height := 60;
  btnBig.Width := 120;
end;

end.
