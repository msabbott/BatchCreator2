unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TitleBar, ExtCtrls, TB97, StdCtrls, batchunit;

type
  TMainForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    min: TToolbarButton97;
    stop: TToolbarButton97;
    canvas: TPaintBox;
    Titlebar1: TTitlebar;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    filename: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    open: TOpenDialog;
    GroupBox2: TGroupBox;
    subs: TMemo;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    tasks: TMemo;
    Panel8: TPanel;
    ToolbarButton971: TToolbarButton97;
    Bevel1: TBevel;
    proj: TMemo;
    procedure stopClick(Sender: TObject);
    procedure minClick(Sender: TObject);
    procedure canvasPaint(Sender: TObject);
    procedure canvasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel4Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure ToolbarButton971Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.DFM}

procedure TMainForm.stopClick(Sender: TObject);
begin
Close;
end;

procedure TMainForm.minClick(Sender: TObject);
begin
Application.Minimize;
end;

procedure TMainForm.canvasPaint(Sender: TObject);
var
   loop : integer;
   count : integer;
   x : integer;
begin
with canvas do
 begin


 //Light Dots
      //Top Line
      Canvas.Pen.Color := $00CF6060; //$00602F2F;
      Canvas.MoveTo(3,4);
      Canvas.LineTo(Width-4,4);

      //Middle Line
      Canvas.MoveTo(3,10);
      Canvas.LineTo(Width-4,10);

      //Bottom Line
      Canvas.MoveTo(3,16);
      Canvas.LineTo(Width-4,16);

      //Make Dots
      Canvas.Pen.Color := clBtnFace;
      Canvas.MoveTo(4,4);
      x := 4;

      for loop := 4 to Width-4 do
          begin
          Canvas.MoveTo(x,3);
          Canvas.LineTo(x,17);
          Canvas.MoveTo(x+1,3);
          Canvas.LineTo(x+1,17);
          Canvas.MoveTo(x+2,3);
          Canvas.LineTo(x+2,17);
          Canvas.MoveTo(x+3,3);
          Canvas.LineTo(x+3,17);

          x := x + 5;
          end;

 //Dark Dots
 //Top Line
      Canvas.Pen.Color := $00602F2F;
      Canvas.MoveTo(4,5);
      Canvas.LineTo(Width-3,5);

      //Middle Line
      Canvas.MoveTo(4,11);
      Canvas.LineTo(Width-3,11);

      //Bottom Line
      Canvas.MoveTo(4,17);
      Canvas.LineTo(Width-3,17);

       //Make Dots
      Canvas.Pen.Color := clBtnFace;
      Canvas.MoveTo(5,5);
      x := 5;

      for loop := 5 to Width-4 do
          begin
{**********************************
* NOTE:
*      Because of the second dot being offset, it is easier to repeat the process
* three times in each for loop. This makes the source code longer but is easier
* write and to read again after.
* -----------------------------------------------------------------------------
* If this code is working properly, do not play.
***********************************}
          Canvas.MoveTo(x,5);
          Canvas.LineTo(x,6);
          Canvas.MoveTo(x+1,5);
          Canvas.LineTo(x+1,6);
          Canvas.MoveTo(x+2,5);
          Canvas.LineTo(x+2,6);
          Canvas.MoveTo(x+3,5);
          Canvas.LineTo(x+3,6);


          Canvas.MoveTo(x,11);
          Canvas.LineTo(x,13);
          Canvas.MoveTo(x+1,11);
          Canvas.LineTo(x+1,13);
          Canvas.MoveTo(x+2,11);
          Canvas.LineTo(x+2,13);
          Canvas.MoveTo(x+3,11);
          Canvas.LineTo(x+3,13);

          Canvas.MoveTo(x,17);
          Canvas.LineTo(x,19);
          Canvas.MoveTo(x+1,17);
          Canvas.LineTo(x+1,19);
          Canvas.MoveTo(x+2,17);
          Canvas.LineTo(x+2,19);
          Canvas.MoveTo(x+3,17);
          Canvas.LineTo(x+3,19);



          x := x + 5;
          end;
{******************************
* NOTE:
*      The Border is drawn last because of the way that the dots are drawn.
* When placed at the front of the code, lines appear in the far border.
* This can be avoided by painting the border after the dots hence it's postion
******************************}
//Funky Border!
      Canvas.Pen.Color := clBtnHighlight;
      Canvas.MoveTo(0,0);
      Canvas.LineTo(0,Height-1);
      Canvas.MoveTo(0,0);
      Canvas.LineTo(Width-1,0);

      Canvas.Pen.Color := clBtnShadow;
      Canvas.MoveTo(0,Height-1);
      Canvas.LineTo(Width-1,Height-1);
      Canvas.LineTo(Width-1,-1);

end; //End of WITH statement

end;

procedure TMainForm.canvasMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//I don't really understand these lines because they were given to me on the PC Plus forum
//I have had to add the stuff about not moving whilst maxmimized

if (WindowState = wsNormal)then
   begin
   if ssleft in shift then
      begin
         releasecapture; //restore mouse input to prevent from moving too far

         MainForm.perform(WM_syscommand,$F012, 0);
      end;
   end;

end;

procedure TMainForm.Panel4Click(Sender: TObject);
begin
if(open.Execute) then
   begin
   filename.Text := open.FileName;
   end;
end;

procedure TMainForm.Panel6Click(Sender: TObject);
begin
filename.Clear;
subs.Lines.Clear;
subs.Lines.Add('end');
tasks.Lines.Clear;
end;

procedure TMainForm.ToolbarButton971Click(Sender: TObject);
begin
batchform.batch.Lines.LoadFromFile(filename.Text);
batchform.Show;
end;

procedure TMainForm.Panel5Click(Sender: TObject);
begin
proj.Lines.Add('xxx');
proj.Lines.Add(filename.Text);
proj.Lines.Add(filename.Text+'.bcf');
proj.Lines.Add(filename.Text+'.sub');
proj.Lines.Add(filename.Text+'.tas');

batchform.batch.Lines.SaveToFile(filename.Text+'.bcf');
subs.Lines.SaveToFile(filename.Text+'.sub');
tasks.Lines.SaveToFile(filename.Text+'.tas');
proj.Lines.SaveToFile(filename.Text+'.bcp');
end;

end.
