unit Main;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, TB97, TitleBar,
  AnimatedMenus98;

type
  TMainForm = class(TForm)
    StatusBar: TStatusBar;
    Titlebar1: TTitlebar;
    top: TDock97;
    titlebar: TToolWindow97;
    Label1: TLabel;
    MainMenu981: TMainMenu98;
    OnlyMainMenu1: TOnlyMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    Saveas1: TMenuItem;
    N1: TMenuItem;
    BatchCreator1: TMenuItem;
    N2: TMenuItem;
    Print1: TMenuItem;
    N3: TMenuItem;
    Exit1: TMenuItem;
    Edit1: TMenuItem;
    Undo1: TMenuItem;
    N4: TMenuItem;
    Cut1: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    N5: TMenuItem;
    Fijnd1: TMenuItem;
    Insert1: TMenuItem;
    V1: TMenuItem;
    Window1: TMenuItem;
    Help1: TMenuItem;
    Options1: TMenuItem;
    MouseOn1: TMenuItem;
    MouseOff1: TMenuItem;
    N6: TMenuItem;
    Window2: TMenuItem;
    ArrangeIcons1: TMenuItem;
    MinimizeAll1: TMenuItem;
    Cascade1: TMenuItem;
    Contents1: TMenuItem;
    Index1: TMenuItem;
    N7: TMenuItem;
    AboutDosWindows1: TMenuItem;
    AboutSuitw1: TMenuItem;
    N8: TMenuItem;
    DeployingDosWindows1: TMenuItem;
    left: TDock97;
    right: TDock97;
    bottom: TDock97;
    Toolbar971: TToolbar97;
    newbut: TToolbarButton97;
    openbut: TToolbarButton97;
    savebut: TToolbarButton97;
    ToolbarSep971: TToolbarSep97;
    printbut: TToolbarButton97;
    ToolbarSep972: TToolbarSep97;
    cutbut: TToolbarButton97;
    ToolbarSep973: TToolbarSep97;
    copybut: TToolbarButton97;
    Pastebut: TToolbarButton97;
    undobut: TToolbarButton97;
    ToolbarSep974: TToolbarSep97;
    ToolbarButton979: TToolbarButton97;
    ToolbarSep975: TToolbarSep97;
    ToolbarButton9710: TToolbarButton97;
    ToolbarButton9711: TToolbarButton97;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PasteAsNew1: TMenuItem;
    N9: TMenuItem;
    FindNext1: TMenuItem;
    canvas: TPaintBox;
    MenuItemBitmaps1: TMenuItemBitmaps;
    MenuItemBitmaps2: TMenuItemBitmaps;
    MenuItemBitmaps3: TMenuItemBitmaps;
    MenuItemBitmaps4: TMenuItemBitmaps;
    MenuItemBitmaps5: TMenuItemBitmaps;
    N10: TMenuItem;
    SuiteSetup1: TMenuItem;
    SuiteSetup2: TMenuItem;
    N11: TMenuItem;
    AutoCommands1: TMenuItem;
    N12: TMenuItem;
    Comment1: TMenuItem;
    AutoWindow1: TMenuItem;
    N13: TMenuItem;
    Image1: TImage;
    MenuItemBitmaps6: TMenuItemBitmaps;
    MenuItemBitmaps7: TMenuItemBitmaps;
    MenuItemBitmaps8: TMenuItemBitmaps;
    MenuItemBitmaps9: TMenuItemBitmaps;
    Toolbar972: TToolbar97;
    auto: TEdit97;
    ToolbarButton971: TToolbarButton97;
    procedure FormCreate(Sender: TObject);
    procedure FileNewItemClick(Sender: TObject);
    procedure WindowCascadeItemClick(Sender: TObject);
    procedure UpdateMenuItems(Sender: TObject);
    procedure WindowTileItemClick(Sender: TObject);
    procedure WindowArrangeItemClick(Sender: TObject);
    procedure FileCloseItemClick(Sender: TObject);
    procedure FileOpenItemClick(Sender: TObject);
    procedure FileExitItemClick(Sender: TObject);
    procedure FileSaveItemClick(Sender: TObject);
    procedure FileSaveAsItemClick(Sender: TObject);
    procedure CutItemClick(Sender: TObject);
    procedure CopyItemClick(Sender: TObject);
    procedure PasteItemClick(Sender: TObject);
    procedure WindowMinimizeItemClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure canvasPaint(Sender: TObject);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
    procedure ShowHint(Sender: TObject);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.DFM}

uses ChildWin;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Application.OnHint := ShowHint;
  Screen.OnActiveFormChange := UpdateMenuItems;
end;

procedure TMainForm.ShowHint(Sender: TObject);
begin
  StatusBar.SimpleText := Application.Hint;
end;

procedure TMainForm.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
end;

procedure TMainForm.FileNewItemClick(Sender: TObject);
begin
  CreateMDIChild('Window ' + IntToStr(MDIChildCount + 1) + ' - Script "New Script"');
end;

procedure TMainForm.FileOpenItemClick(Sender: TObject);
begin
{  if OpenDialog.Execute then
    CreateMDIChild(OpenDialog.FileName);}
end;

procedure TMainForm.FileCloseItemClick(Sender: TObject);
begin
  if ActiveMDIChild <> nil then
    ActiveMDIChild.Close;
end;

procedure TMainForm.FileSaveItemClick(Sender: TObject);
begin
  { save current file (ActiveMDIChild points to the window) }
end;

procedure TMainForm.FileSaveAsItemClick(Sender: TObject);
begin
  { save current file under new name }
end;

procedure TMainForm.FileExitItemClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.CutItemClick(Sender: TObject);
begin
  {cut selection to clipboard}
end;

procedure TMainForm.CopyItemClick(Sender: TObject);
begin
  {copy selection to clipboard}
end;

procedure TMainForm.PasteItemClick(Sender: TObject);
begin
  {paste from clipboard}
end;

procedure TMainForm.WindowCascadeItemClick(Sender: TObject);
begin
  Cascade;
end;

procedure TMainForm.WindowTileItemClick(Sender: TObject);
begin
  Tile;
end;

procedure TMainForm.WindowArrangeItemClick(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TMainForm.WindowMinimizeItemClick(Sender: TObject);
var
  I: Integer;
begin
  { Must be done backwards through the MDIChildren array }
  for I := MDIChildCount - 1 downto 0 do
    MDIChildren[I].WindowState := wsMinimized;
end;

procedure TMainForm.UpdateMenuItems(Sender: TObject);
begin
{  FileCloseItem.Enabled := MDIChildCount > 0;
  FileSaveItem.Enabled := MDIChildCount > 0;
  FileSaveAsItem.Enabled := MDIChildCount > 0;
  CutItem.Enabled := MDIChildCount > 0;
  CopyItem.Enabled := MDIChildCount > 0;
  PasteItem.Enabled := MDIChildCount > 0;
  SaveBtn.Enabled := MDIChildCount > 0;
  CutBtn.Enabled := MDIChildCount > 0;
  CopyBtn.Enabled := MDIChildCount > 0;
  PasteBtn.Enabled := MDIChildCount > 0;
  WindowCascadeItem.Enabled := MDIChildCount > 0;
  WindowTileItem.Enabled := MDIChildCount > 0;
  WindowArrangeItem.Enabled := MDIChildCount > 0;
  WindowMinimizeItem.Enabled := MDIChildCount > 0;}
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveFormChange := nil;
end;

procedure TMainForm.Label4Click(Sender: TObject);
begin
Close;
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

end.
