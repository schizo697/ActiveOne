unit C01p06u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TChangingWindowStateForm = class(TForm)
    btnMinimize: TButton;
    btnNormal: TButton;
    Button3: TButton;
    procedure btnMinimizeClick(Sender: TObject);
    procedure btnNormalClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangingWindowStateForm: TChangingWindowStateForm;

implementation

{$R *.dfm}

procedure TChangingWindowStateForm.btnMinimizeClick(Sender: TObject);
begin
  ChangingWindowStateForm.WindowState := wsMinimized;
end;

procedure TChangingWindowStateForm.btnNormalClick(Sender: TObject);
begin
  ChangingWindowStateForm.WindowState := wsNormal;
end;

procedure TChangingWindowStateForm.Button3Click(Sender: TObject);
begin
  ChangingWindowStateForm.WindowState := wsMaximized;
end;

end.
