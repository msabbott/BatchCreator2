unit choiceunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComboBox97, Main;

type
  Tchoice = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    canvas: TPaintBox;
    Label1: TLabel;
    text: TEdit;
    GroupBox1: TGroupBox;
    stan: TRadioButton;
    stand: TComboBox97;
    cus: TRadioButton;
    custom: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    adv: TPanel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    opt1: TComboBox97;
    opt2: TComboBox97;
    Label3: TLabel;
    procedure canvasPaint(Sender: TObject);
    procedure advClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  choice: Tchoice;

implementation

{$R *.DFM}

procedure Tchoice.canvasPaint(Sender: TObject);
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

procedure Tchoice.advClick(Sender: TObject);
begin
if (Height = 277) then
   Begin
        Height := 180;
        adv.Caption := '6';
   end
else
    Begin
         Height := 277;
         adv.Caption := '5';
    end;
end;

procedure Tchoice.FormShow(Sender: TObject);
begin
opt1.Items := MainForm.Child.Subs.Items;
opt2.Items := MainForm.Child.Subs.Items;
end;

procedure Tchoice.Panel3Click(Sender: TObject);
var
   keys : string;
begin
//Find out if it is standard or custom and adjust variable
//"key" to fit.
if cus.Checked then keys := custom.Text
//Work out which option of the standard is selected!
    else if (stand.Text = 'Y/N') then keys := 'yn'
    else if (stand.Text = '1/2') then keys := '12'
    else if (stand.Text = 'A/B') then keys := 'ab';

//Add command with text and keys
MainForm.Child.Add('choice '+ text.Text +' /c:'+ keys);

//Sub Routines
if (adv.Caption = '5')then
   begin
        MainForm.Child.Add('if errorlevel 1 goto :' + opt1.Text);
        MainForm.Child.Add('goto :' + opt2.Text);
   end;

Panel4Click(Panel3);
end;

procedure Tchoice.Panel4Click(Sender: TObject);
begin
stan.Checked := true;
cus.Checked := false;

stand.Text := 'Y/N';
custom.Text := 'yn';
text.Text := 'Continue?';

opt1.Items.Clear;
opt2.Items.Clear;
opt1.Text := '';
opt2.Text := '';

adv.Caption := '6';
Height := 180;

Close;
end;

procedure Tchoice.Panel6Click(Sender: TObject);
begin
Close;
end;

end.
