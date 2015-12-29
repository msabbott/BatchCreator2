unit optunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Main, StdCtrls, urllabel, ComCtrls, NetGradient, ComboBox97,
  RXCombos, AnimatedMenus98, TB97;

type
  Toptions = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    canvas: TPaintBox;
    URLLabel1: TURLLabel;
    tree: TTreeView;
    page: TNotebook;
    NetGradient1: TNetGradient;
    NetGradient2: TNetGradient;
    NetGradient3: TNetGradient;
    NetGradient4: TNetGradient;
    NetGradient5: TNetGradient;
    NetGradient6: TNetGradient;
    NetGradient7: TNetGradient;
    NetGradient8: TNetGradient;
    Label1: TLabel;
    autolabel: TURLLabel;
    Label2: TLabel;
    Label3: TLabel;
    URLLabel3: TURLLabel;
    URLLabel4: TURLLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    speed: TCheckBox;
    auto: TCheckBox;
    proj: TCheckBox;
    Bevel1: TBevel;
    all: TPanel;
    none: TPanel;
    sub: TCheckBox;
    mru: TCheckBox;
    Label13: TLabel;
    projname: TEdit;
    Button1: TButton;
    Label14: TLabel;
    projbrowse: TSaveDialog;
    Label15: TLabel;
    Label16: TLabel;
    openani: TComboBox97;
    closeani: TComboBox97;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    startcol: TColorComboBox;
    endcol: TColorComboBox;
    showgrad: TCheckBox;
    NetGradient9: TNetGradient;
    Panel16: TPanel;
    Label19: TLabel;
    fav1: TComboBox97;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    fav2: TComboBox97;
    fav3: TComboBox97;
    fav4: TComboBox97;
    Label23: TLabel;
    Label24: TLabel;
    addname: TEdit;
    Label25: TLabel;
    addcom: TEdit;
    Panel17: TPanel;
    ToolbarButton971: TToolbarButton97;
    ToolbarButton972: TToolbarButton97;
    Label26: TLabel;
    dellist: TListBox;
    Label27: TLabel;
    delname: TEdit;
    Label28: TLabel;
    delcom: TEdit;
    Panel18: TPanel;
    ToolbarButton973: TToolbarButton97;
    edlist: TListBox;
    Label29: TLabel;
    edname: TEdit;
    Label30: TLabel;
    edcom: TEdit;
    Panel19: TPanel;
    ToolbarButton974: TToolbarButton97;
    ToolbarButton975: TToolbarButton97;
    procedure canvasPaint(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure treeChange(Sender: TObject; Node: TTreeNode);
    procedure URLLabel1Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure allClick(Sender: TObject);
    procedure noneClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure Panel15Click(Sender: TObject);
    procedure ToolbarButton972Click(Sender: TObject);
    procedure ToolbarButton971Click(Sender: TObject);
    procedure ToolbarButton973Click(Sender: TObject);
    procedure ToolbarButton974Click(Sender: TObject);
    procedure edlistClick(Sender: TObject);
    procedure ToolbarButton975Click(Sender: TObject);
    procedure dellistClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure SelectLast;
    procedure LoadNames;
  end;

var
  options: Toptions;

implementation

{$R *.DFM}

procedure Toptions.canvasPaint(Sender: TObject);
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

procedure Toptions.Panel2Click(Sender: TObject);
begin
Close;
end;

procedure Toptions.treeChange(Sender: TObject; Node: TTreeNode);
begin
page.ActivePage := tree.Selected.Text;
end;

procedure Toptions.URLLabel1Click(Sender: TObject);
begin
Application.HelpContext(17);
end;

procedure Toptions.Panel5Click(Sender: TObject);
begin
Application.HelpContext(18);
end;

procedure Toptions.Panel6Click(Sender: TObject);
begin
Application.HelpContext(19);
end;

procedure Toptions.Panel7Click(Sender: TObject);
begin
Application.HelpContext(20);
end;

procedure Toptions.Panel4Click(Sender: TObject);
begin
Application.HelpContext(21);
end;

procedure Toptions.allClick(Sender: TObject);
begin
speed.Checked := true;
auto.Checked := true;
sub.Checked := true;
mru.Checked := true;
proj.Checked := true;

all.BevelOuter := bvLowered;
none.BevelOuter := bvRaised;
end;

procedure Toptions.noneClick(Sender: TObject);
begin
speed.Checked := false;
auto.Checked := false;
sub.Checked := false;
mru.Checked := false;
proj.Checked := false;

all.BevelOuter := bvRaised;
none.BevelOuter := bvLowered;
end;

procedure Toptions.Button1Click(Sender: TObject);
begin
if (projbrowse.Execute)then projname.Text := projbrowse.FileName;
end;

procedure Toptions.FormShow(Sender: TObject);
begin
//View
  //Toolbars
  speed.Checked := MainForm.speedbar.Visible;
  auto.Checked := MainForm.autobar.Visible;
  sub.Checked := MainForm.subbar.Visible;
  mru.Checked := MainForm.mru.Visible;
  proj.Checked :=  MainForm.projbar.Visible;
  //MenuBar
  endcol.ColorValue := MainForm.menubar.Options.Title.ColorBegin;
  startcol.ColorValue := MainForm.menubar.Options.Title.ColorEnd;
  showgrad.Checked := MainForm.menubar.Options.Title.Visible;

  if (MainForm.menubar.Options.OpenAnimation = anNone) then openani.Text := 'None';
  if (MainForm.menubar.Options.OpenAnimation = anHSlide) then openani.Text := 'Horizontal Slide';
  if (MainForm.menubar.Options.OpenAnimation = anVSlide) then openani.Text := 'Vertical Slide';
  if (MainForm.menubar.Options.OpenAnimation = anPopup) then openani.Text := 'Popup';
  if (MainForm.menubar.Options.OpenAnimation = anRandom) then openani.Text := 'Random';
  if (MainForm.menubar.Options.OpenAnimation = anSmart) then openani.Text := 'Smart';
  if (MainForm.menubar.Options.OpenAnimation = anUnfold) then openani.Text := 'Unfold';

  if (MainForm.menubar.Options.CloseAnimation = anNone) then closeani.Text := 'None';
  if (MainForm.menubar.Options.CloseAnimation = anHSlide) then closeani.Text := 'Horizontal Slide';
  if (MainForm.menubar.Options.CloseAnimation = anVSlide) then closeani.Text := 'Vertical Slide';
  if (MainForm.menubar.Options.CloseAnimation = anPopup) then closeani.Text := 'Popup';
  if (MainForm.menubar.Options.CloseAnimation = anRandom) then closeani.Text := 'Random';
  if (MainForm.menubar.Options.CloseAnimation = anSmart) then closeani.Text := 'Smart';
  if (MainForm.menubar.Options.CloseAnimation = anUnfold) then closeani.Text := 'Unfold';

//Projects
projname.Text := MainForm.Child.Project.Items.Strings[1];
projbrowse.FileName := projname.Text;


//AutoCommands
LoadNames;
end;

procedure Toptions.Panel13Click(Sender: TObject);
begin
Panel15Click(Panel13);
Close;
end;

procedure Toptions.Panel15Click(Sender: TObject);
begin
//View
  //Toolbars
  MainForm.speedbar.Visible := speed.Checked;
  MainForm.autobar.Visible := auto.Checked;
  MainForm.subbar.Visible := sub.Checked;
  MainForm.mru.Visible := mru.Checked;
  MainForm.projbar.Visible := proj.Checked;
  //MenuBar
  MainForm.menubar.Options.Title.ColorBegin := endcol.ColorValue;
  MainForm.menubar.Options.Title.ColorEnd := startcol.ColorValue;
  MainForm.menubar.Options.Title.Visible := showgrad.Checked;

  if (openani.Text = 'None') then
     begin
          MainForm.menubar.Options.OpenAnimation := anNone;
     end
     else begin
  if (openani.Text = 'Horizontal Slide') then
     begin
          MainForm.menubar.Options.OpenAnimation := anHSlide;
     end
     else begin
  if (openani.Text = 'Popup') then
     begin
          MainForm.menubar.Options.OpenAnimation := anPopup;
     end
     else begin
  if (openani.Text = 'Random') then
     begin
          MainForm.menubar.Options.OpenAnimation := anRandom;
     end
     else begin
   if (openani.Text = 'Smart') then
     begin
          MainForm.menubar.Options.OpenAnimation := anSmart;
     end
     else begin
  if (openani.Text = 'Unfold') then
     begin
          MainForm.menubar.Options.OpenAnimation := anUnfold;
     end
     else begin
  if (openani.Text = 'Vertical Slide') then
     begin
          MainForm.menubar.Options.OpenAnimation := anVSlide;
     end
     else begin
          MainForm.menubar.Options.OpenAnimation := anNone;
          end;
         end;
        end;
       end;
      end;
     end;
    end;

  if (closeani.Text = 'None') then
     begin
          MainForm.menubar.Options.CloseAnimation := anNone;
     end
     else begin
  if (closeani.Text = 'Horizontal Slide') then
     begin
          MainForm.menubar.Options.CloseAnimation := anHSlide;
     end
     else begin
  if (closeani.Text = 'Popup') then
     begin
          MainForm.menubar.Options.CloseAnimation := anPopup;
     end
     else begin
  if (closeani.Text = 'Random') then
     begin
          MainForm.menubar.Options.CloseAnimation := anRandom;
     end
     else begin
   if (closeani.Text = 'Smart') then
     begin
          MainForm.menubar.Options.CloseAnimation := anSmart;
     end
     else begin
  if (closeani.Text = 'Unfold') then
     begin
          MainForm.menubar.Options.CloseAnimation := anUnfold;
     end
     else begin
  if (closeani.Text = 'Vertical Slide') then
     begin
          MainForm.menubar.Options.CloseAnimation := anVSlide;
     end
     else begin
          MainForm.menubar.Options.CloseAnimation := anNone;
          end;
         end;
        end;
       end;
      end;
     end;
    end;



//Projects
MainForm.Child.Project.Items.Strings[1] := projname.Text;

//AutoCommands
MainForm.AutoCommand.WriteString('favourite1',fav1.Text);
MainForm.AutoCommand.WriteString('favourite2',fav2.Text);
MainForm.AutoCommand.WriteString('favourite3',fav3.Text);
MainForm.AutoCommand.WriteString('favourite4',fav4.Text);

MainForm.SetNames;
end;

procedure Toptions.SelectLast;
var
   Last : TTreeNode;
begin
     Last := tree.Items[tree.Items.Count-1];
     Last.Selected := true;

     page.ActivePage := 'Project';
end;

procedure Toptions.ToolbarButton972Click(Sender: TObject);
begin
addname.Clear;
addcom.Clear;
end;

procedure Toptions.ToolbarButton971Click(Sender: TObject);
begin
MainForm.AutoCommand.WriteString(addname.Text, addcom.Text);
addname.Clear;
addcom.Clear;
LoadNames;
end;

procedure Toptions.ToolbarButton973Click(Sender: TObject);
var
   button : integer;
begin
button := Application.MessageBox('Please Confirm. Delete this AutoCommand?','Confirm',MB_ICONEXCLAMATION + MB_OKCANCEL);
if (button = IDOK) then MainForm.AutoCommand.DeleteValue(delname.Text);
end;

procedure Toptions.LoadNames;
begin
MainForm.AutoCommand.GetValueNames(edlist.Items);
MainForm.AutoCommand.GetValueNames(dellist.Items);
MainForm.AutoCommand.GetValueNames(fav1.Items);
MainForm.AutoCommand.GetValueNames(fav2.Items);
MainForm.AutoCommand.GetValueNames(fav3.Items);
MainForm.AutoCommand.GetValueNames(fav4.Items);

fav1.Text := MainForm.AutoCommand.ReadString('favourite1');
fav2.Text := MainForm.AutoCommand.ReadString('favourite2');
fav3.Text := MainForm.AutoCommand.ReadString('favourite3');
fav4.Text := MainForm.AutoCommand.ReadString('favourite4');
end;

procedure Toptions.ToolbarButton974Click(Sender: TObject);
begin
edname.Clear;
edcom.Clear;
end;

procedure Toptions.edlistClick(Sender: TObject);
begin
edname.Text := edlist.Items.Strings[edlist.ItemIndex];
edcom.Text := MainForm.AutoCommand.ReadString(edname.Text);
end;

procedure Toptions.ToolbarButton975Click(Sender: TObject);
begin
MainForm.AutoCommand.WriteString(edname.Text, edcom.Text);
end;

procedure Toptions.dellistClick(Sender: TObject);
begin
delname.Text := dellist.Items.Strings[dellist.ItemIndex];
delcom.Text := MainForm.AutoCommand.ReadString(delname.Text);
LoadNames;
end;

end.
