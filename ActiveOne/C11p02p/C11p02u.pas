unit C11p02u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TUndoingChangesForm = class(TForm)
    memText: TMemo;
    btnCut: TButton;
    btnCopy: TButton;
    btnPaste: TButton;
    btnClear: TButton;
    btnUndo: TButton;
    procedure btnCutClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure btnPasteClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnUndoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UndoingChangesForm: TUndoingChangesForm;

implementation

{$R *.dfm}

procedure TUndoingChangesForm.btnClearClick(Sender: TObject);
begin
  memText.Clear;
end;

procedure TUndoingChangesForm.btnCopyClick(Sender: TObject);
begin
  memText.CopyToClipboard;
end;

procedure TUndoingChangesForm.btnCutClick(Sender: TObject);
begin
  memText.CutToClipboard;
end;

procedure TUndoingChangesForm.btnPasteClick(Sender: TObject);
begin
  memText.PasteFromClipboard;
end;

procedure TUndoingChangesForm.btnUndoClick(Sender: TObject);
begin
  memText.Undo;
end;

end.
