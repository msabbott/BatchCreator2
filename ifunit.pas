unit ifunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComboBox97, Main;

type
  Tifform = class(TForm)
    Panel1: TPanel;
    canvas: TPaintBox;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    notcheck: TCheckBox;
    RadioGroup1: TRadioGroup;
    err: TRadioButton;
    ex: TRadioButton;
    comp: TRadioButton;
    erredit: TEdit;
    exedit: TEdit;
    comp1: TEdit;
    comp2: TEdit;
    GroupBox1: TGroupBox;
    subs: TComboBox97;
    com: TEdit;
    gotocheck: TRadioButton;
    comcheck: TRadioButton;
    procedure Panel2Click(Sender: TObject);
    procedure canvasPaint(Sender: TObject);
    procedure errClick(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ifform: Tifform;

implementation

{$R *.DFM}

procedure Tifform.Panel2Click(Sender: TObject);
begin
Close;
end;

procedure Tifform.canvasPaint(Sender: TObject);
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

procedure Tifform.errClick(Sender: TObject);
begin
erredit.Enabled := err.Checked;
exedit.Enabled := ex.Checked;
comp1.Enabled := comp.Checked;
comp2.Enabled := comp.Checked;
end;

procedure Tifform.Panel6Click(Sender: TObject);
begin
notcheck.Checked := false;

err.Checked := true;
erredit.Clear;
erredit.Enabled := true;

ex.Checked := false;
exedit.Clear;
exedit.Enabled := false;

comp.Checked := false;
comp1.Clear;
comp1.Enabled := false;
comp2.Clear;
comp2.Enabled := false;

subs.Items.Clear;
subs.Clear;
com.Clear;

Close;
end;

procedure Tifform.Panel5Click(Sender: TObject);
var
   cmdline : string;
begin
   cmdline := 'IF ';
   if (notcheck.Checked = true) then cmdline := cmdline + 'NOT ';

   if (err.Checked = true) then cmdline := cmdline + 'ERRORLEVEL ' + erredit.Text;
   if (ex.Checked = true) then cmdline := cmdline + 'EXIST ' + exedit.Text;
   if (comp.Checked = true) then cmdline := cmdline + comp1.Text +'=='+ comp2.Text;

   if (gotocheck.Checked = true) then cmdline := cmdline + ' goto ' + subs.Text;
   if (comcheck.Checked = true) then cmdline := cmdline + ' ' + com.Text;

MainForm.Child.Add(cmdline);

//Reset and Close
Panel6Click(Panel5);
end;

procedure Tifform.FormShow(Sender: TObject);
begin
subs.Items := MainForm.Child.Subs.Items;
end;

end.
