unit C03p05u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TConcatenating = class(TForm)
    edtTitle: TEdit;
    edtInitial: TEdit;
    edtSurname: TEdit;
    lblName: TLabel;
    btnConcate: TButton;
    procedure btnConcateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Concatenating: TConcatenating;

implementation

{$R *.dfm}

procedure TConcatenating.btnConcateClick(Sender: TObject);
var
  aTitle: string;
  aInitial: string;
  aSurname: string;
begin
  aTitle := edtTitle.Text;
  aInitial := edtInitial.Text;
  aSurname := edtSurname.Text;

  lblName.Caption := aSurname + ', ' + aInitial + ' (' + aTitle + ')';
end;

end.
