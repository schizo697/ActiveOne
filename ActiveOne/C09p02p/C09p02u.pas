unit C09p02u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TFontMenuItemForm = class(TForm)
    mmFont: TMainMenu;
    mmFiles: TMenuItem;
    mmLoad: TMenuItem;
    mmSave: TMenuItem;
    mmReset: TMenuItem;
    mmExit: TMenuItem;
    mmMenu: TMenuItem;
    mmFonts: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    lbNames: TListBox;
    FontDialog: TFontDialog;
    procedure mmLoadClick(Sender: TObject);
    procedure mmSaveClick(Sender: TObject);
    procedure mmResetClick(Sender: TObject);
    procedure mmExitClick(Sender: TObject);
    procedure mmFontsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FontMenuItemForm: TFontMenuItemForm;

implementation

{$R *.dfm}

procedure TFontMenuItemForm.mmExitClick(Sender: TObject);
begin
  FontMenuItemForm.Close;
end;

procedure TFontMenuItemForm.mmFontsClick(Sender: TObject);
begin
  if FontDialog.Execute then
  begin
    lbNames.Font := FontDialog.Font;
  end;
end;

procedure TFontMenuItemForm.mmLoadClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
  lbNames.Items.LoadFromFile(OpenDialog.FileName);
  end;
end;

procedure TFontMenuItemForm.mmResetClick(Sender: TObject);
begin
  lbNames.Clear;
end;

procedure TFontMenuItemForm.mmSaveClick(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    lbNames.Items.SaveToFile(SaveDialog.FileName);
  end;
end;

end.
