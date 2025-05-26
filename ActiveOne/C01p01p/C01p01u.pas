 unit C01p01u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TChangingSizeForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangingSizeForm: TChangingSizeForm;

implementation

{$R *.dfm}

procedure TChangingSizeForm.Button1Click(Sender: TObject);
begin
 ChangingSizeForm.Height := 300;
end;

procedure TChangingSizeForm.Button2Click(Sender: TObject);
begin
 ChangingSizeForm.Height := 200;
end;

end.
