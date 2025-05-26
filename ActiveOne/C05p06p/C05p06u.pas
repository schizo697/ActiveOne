unit C05p06u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TSettingColoursForm = class(TForm)
    btnColour: TButton;
    cdColorDemo: TColorDialog;
    procedure btnColourClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingColoursForm: TSettingColoursForm;

implementation

{$R *.dfm}

procedure TSettingColoursForm.btnColourClick(Sender: TObject);
begin
  if cdColorDemo.Execute then
    begin
      Self.Color := cdColorDemo.Color;
    end;
end;

end.
