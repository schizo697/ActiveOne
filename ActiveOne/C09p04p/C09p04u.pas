unit C09p04u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TActionListForm = class(TForm)
    MainMenu: TMainMenu;
    Colors1: TMenuItem;
    mmPurple: TMenuItem;
    mmYellow: TMenuItem;
    btnYellow: TButton;
    btnPurple: TButton;
    procedure mmPurpleClick(Sender: TObject);
    procedure mmYellowClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActionListForm: TActionListForm;

implementation

{$R *.dfm}

procedure TActionListForm.mmPurpleClick(Sender: TObject);
begin
  ActionListForm.Color := clPurple;
  btnPurple.Enabled := False;
  btnYellow.Enabled := True;
end;

procedure TActionListForm.mmYellowClick(Sender: TObject);
begin
  ActionListForm.Color := clYellow;
  btnYellow.Enabled := False;
  btnPurple.Enabled := True;
end;

end.
