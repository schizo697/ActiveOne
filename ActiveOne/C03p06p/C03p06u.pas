unit C03p06u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCaptions = class(TForm)
    grpSelectCaption: TGroupBox;
    radCaption1: TRadioButton;
    radCaption2: TRadioButton;
    radCaption3: TRadioButton;
    radCaption4: TRadioButton;
    grpShowCaption: TGroupBox;
    lblCaption: TLabel;
    procedure radCaption1Click(Sender: TObject);
    procedure radCaption2Click(Sender: TObject);
    procedure radCaption3Click(Sender: TObject);
    procedure radCaption4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Captions: TCaptions;

implementation

{$R *.dfm}

procedure TCaptions.radCaption1Click(Sender: TObject);
begin
  lblCaption.Caption := 'Caption 1';
end;

procedure TCaptions.radCaption2Click(Sender: TObject);
begin
  lblCaption.Caption := 'Caption 2';
end;

procedure TCaptions.radCaption3Click(Sender: TObject);
begin
  lblCaption.Caption := 'Caption 3';
end;

procedure TCaptions.radCaption4Click(Sender: TObject);
begin
  lblCaption.Caption := 'Caption 4';
end;

end.
