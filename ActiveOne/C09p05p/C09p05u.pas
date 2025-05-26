 unit C09p05u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TActionListForm = class(TForm)
    mmMenu: TMainMenu;
    File1: TMenuItem;
    mmLoad: TMenuItem;
    mmSave: TMenuItem;
    mmReset: TMenuItem;
    mmExit: TMenuItem;
    Exit2: TMenuItem;
    Settings1: TMenuItem;
    mmDelete: TMenuItem;
    lbNames: TListBox;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    procedure mmLoadClick(Sender: TObject);
    procedure mmSaveClick(Sender: TObject);
    procedure mmResetClick(Sender: TObject);
    procedure mmExitClick(Sender: TObject);
    procedure mmDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ActionListForm: TActionListForm;

implementation

{$R *.dfm}

procedure TActionListForm.mmDeleteClick(Sender: TObject);
var
  NameToDelete: string;
  I: Integer;
  NumDelete: Integer;
begin
  if lbNames.ItemIndex = -1 then
  begin
    ShowMessage('Please select a name to delete.');
    Exit;
  end;

  NameToDelete := UpperCase(lbNames.Items[lbNames.ItemIndex]);
  NumDelete := 0;
  I := 0;

  while I < lbNames.Items.Count do
  begin
    if UpperCase(lbNames.Items[I]) = NameToDelete then
    begin
      lbNames.Items.Delete(I);
      NumDelete := NumDelete + 1;
    end
    else
    begin
      I := I + 1;
    end;
  end;
end;

procedure TActionListForm.mmExitClick(Sender: TObject);
begin
  ActionListForm.Close;
end;

procedure TActionListForm.mmLoadClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    lbNames.Items.LoadFromFile(OpenDialog.FileName)
  end
  else
  begin
    ShowMessage('Invalid File!');
  end;
end;

procedure TActionListForm.mmResetClick(Sender: TObject);
begin
  lbNames.Items.Clear;
end;

procedure TActionListForm.mmSaveClick(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    lbNames.Items.SaveToFile(SaveDialog.FileName)
  end
  else
  begin
    ShowMessage('Unable to save!');
  end;
end;

end.
