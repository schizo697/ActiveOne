unit C10p06u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TDrawingEllipsesForm = class(TForm)
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DrawingEllipsesForm: TDrawingEllipsesForm;

implementation

{$R *.dfm}

procedure TDrawingEllipsesForm.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssAlt in Shift then
  begin
    Canvas.Brush.Color := clAqua;
    Canvas.Ellipse(X - 20, Y - 20, X + 20, Y + 20)
  end
  else if ssCtrl in Shift then
  begin
    Canvas.Brush.Color := clPurple;
    Canvas.Ellipse(X - 20, Y - 20, X + 20, Y + 20);
  end;
end;

end.
