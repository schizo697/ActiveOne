unit C03p04u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TRedone = class(TForm)
    lbBoys: TListBox;
    lbGirls: TListBox;
    lbCouples: TListBox;
    edtBoy: TEdit;
    edtGirl: TEdit;
    btnAdd: TButton;
    lblBoy: TLabel;
    Label1: TLabel;
    lblBoyList: TLabel;
    lblGirlList: TLabel;
    lblCoupleList: TLabel;
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Redone: TRedone;

implementation

{$R *.dfm}

procedure TRedone.btnAddClick(Sender: TObject);
var
  aBoy: string;
  aGirl: string;
begin
  aBoy := edtBoy.Text;
  aGirl := edtGirl.Text;

  if ABoy.IsEmpty then
  begin
    lbGirls.Items.Add(aGirl);
    edtGirl.Clear;
    edtGirl.SetFocus
  end
  else if AGirl.IsEmpty then
    begin
      lbBoys.Items.Add(aBoy);
      edtBoy.Clear;
      edtBoy.SetFocus
    end
  else
    begin
      lbCouples.Items.Add(aBoy + ' and ' + aGirl );
      edtBoy.Clear;
      edtGirl.Clear;
      edtBoy.SetFocus;
    end;
end;

end.
