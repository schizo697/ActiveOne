unit C06p02u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TPutsOnderWaterForm = class(TForm)
    lblClassificationNumber: TLabel;
    speBookNumber: TSpinEdit;
    btnFind: TButton;
    lblMessage: TLabel;
    procedure btnFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PutsOnderWaterForm: TPutsOnderWaterForm;

implementation

{$R *.dfm}

procedure TPutsOnderWaterForm.btnFindClick(Sender: TObject);
var
  BookNumber: Integer;
begin
  BookNumber := speBookNumber.Value;

  case BookNumber of
    100..199:
      MessageDlg('the Book is in the basement', mtInformation, [mbOK], 0);
    200..500, 901..High(Integer):
      MessageDlg('The book is in the ground floor', mtInformation, [mbOK], 0);
    501..699, 751..900:
      MessageDlg('The book is in the first floor', mtInformation, [mbOK], 0);
    700..750:
      MessageDlg('The book is in the annexe', mtInformation, [mbOK], 0);
  else
    MessageDlg('Cannot find the book', mtInformation, [mbOK], 0);
  end;
end;

end.
