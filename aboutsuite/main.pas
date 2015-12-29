unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, eggunit, TB97;

type
  TForm1 = class(TForm)
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Shape2: TShape;
    Image1: TImage;
    Label5: TLabel;
    Panel1: TPanel;
    egg: TEdit;
    ToolbarButton971: TToolbarButton97;
    procedure eggChange(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.DFM}

procedure TForm1.eggChange(Sender: TObject);
begin
if(LowerCase(egg.Text) = 'ttobbakram') then
   begin
   eggform.Show;
   end;

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
Close;
end;

end.
