unit Main;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls,
  TB97, ComboBox97, Cbevel, TitleBar, urllabel, {Include MDIChild Unit}ChildWin,
  AnimatedMenus98, Registry, ShellAPI;

type
  TMainForm = class(TForm)
    TopDock: TDock97;
    RightDock: TDock97;
    LeftDock: TDock97;
    BottomDock: TDock97;
    MainTitle: TToolWindow97;
    Panel1: TPanel;
    Shape1: TShape;
    speedbar: TToolbar97;
    newbut: TToolbarButton97;
    openbut: TToolbarButton97;
    savebut: TToolbarButton97;
    ToolbarSep971: TToolbarSep97;
    printbut: TToolbarButton97;
    ToolbarSep972: TToolbarSep97;
    cutbut: TToolbarButton97;
    copybut: TToolbarButton97;
    pastebut: TToolbarButton97;
    ToolbarSep973: TToolbarSep97;
    optionsbut: TToolbarButton97;
    ToolbarSep974: TToolbarSep97;
    combut: TToolbarButton97;
    helpbut: TToolbarButton97;
    autobar: TToolbar97;
    auto: TEdit97;
    autobut: TToolbarButton97;
    subbar: TToolbar97;
    subbut: TToolbarButton97;
    ToolbarSep975: TToolbarSep97;
    subs: TComboBox97;
    canvas: TPaintBox;
    Titlebar1: TTitlebar;
    ToolbarSep976: TToolbarSep97;
    undobut: TToolbarButton97;
    menubar: TMainMenu98;
    OnlyMainMenu1: TOnlyMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    Saveas: TMenuItem;
    SaveAll1: TMenuItem;
    Print: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    Edit1: TMenuItem;
    Cut: TMenuItem;
    Copy: TMenuItem;
    Paste: TMenuItem;
    N2: TMenuItem;
    Find: TMenuItem;
    FindNext: TMenuItem;
    Undo: TMenuItem;
    N3: TMenuItem;
    Options1: TMenuItem;
    Insert1: TMenuItem;
    Window1: TMenuItem;
    Help1: TMenuItem;
    Cascade1: TMenuItem;
    ArrangeIcons1: TMenuItem;
    MinimizeAll1: TMenuItem;
    Contents1: TMenuItem;
    Index1: TMenuItem;
    N4: TMenuItem;
    CommandsHelp1: TMenuItem;
    CommandsIndex1: TMenuItem;
    N5: TMenuItem;
    AboutBatchCreator1: TMenuItem;
    AboutSuite1: TMenuItem;
    Options2: TMenuItem;
    Project: TMenuItem;
    N6: TMenuItem;
    Setup1: TMenuItem;
    SuiteSetup1: TMenuItem;
    N7: TMenuItem;
    OpenAutoCommands1: TMenuItem;
    DosWindows1: TMenuItem;
    N8: TMenuItem;
    PasteasNew1: TMenuItem;
    N9: TMenuItem;
    InsertAurtoCommand1: TMenuItem;
    Choice1: TMenuItem;
    Printed1: TMenuItem;
    REMLine1: TMenuItem;
    Execut1: TMenuItem;
    Pause1: TMenuItem;
    IfStatement1: TMenuItem;
    N10: TMenuItem;
    ClearScreen1: TMenuItem;
    DosWindowsFile1: TMenuItem;
    DiskSpace1: TMenuItem;
    Date1: TMenuItem;
    Time1: TMenuItem;
    Find1: TMenuItem;
    N11: TMenuItem;
    AutoCommands1: TMenuItem;
    Open2: TMenuItem;
    Edit2: TMenuItem;
    N12: TMenuItem;
    Title: TLabel;
    Image: TImage;
    SystemMenu: TPopupMenu98;
    Restore1: TMenuItem;
    Move1: TMenuItem;
    Size1: TMenuItem;
    N13: TMenuItem;
    Close1: TMenuItem;
    Minimize1: TMenuItem;
    Maximize1: TMenuItem;
    MenuItemBitmaps1: TMenuItemBitmaps;
    MenuItemBitmaps2: TMenuItemBitmaps;
    MenuItemBitmaps3: TMenuItemBitmaps;
    MenuItemBitmaps4: TMenuItemBitmaps;
    MenuItemBitmaps5: TMenuItemBitmaps;
    MenuItemBitmaps6: TMenuItemBitmaps;
    N14: TMenuItem;
    mru: TToolbar97;
    ToolbarButton971: TToolbarButton97;
    ToolbarButton972: TToolbarButton97;
    ToolbarButton973: TToolbarButton97;
    ToolbarButton974: TToolbarButton97;
    projbar: TToolbar97;
    compbut: TToolbarButton97;
    projbut: TToolbarButton97;
    View1: TMenuItem;
    ProjectInformation: TMenuItem;
    FinishedProject: TMenuItem;
    N15: TMenuItem;
    SubRoutines: TMenuItem;
    N16: TMenuItem;
    Toolbars1: TMenuItem;
    Tasks: TMenuItem;
    N17: TMenuItem;
    mru1: TMenuItem;
    mru2: TMenuItem;
    mru3: TMenuItem;
    mru4: TMenuItem;
    ToolbarSep977: TToolbarSep97;
    sublistbut: TToolbarButton97;
    taskbut: TToolbarButton97;
    SpeedBar1: TMenuItem;
    AutoCommandsBar1: TMenuItem;
    SubRoutinesBar1: TMenuItem;
    MostRecentUsedBar1: TMenuItem;
    ProjectBar1: TMenuItem;
    MenuItemBitmaps7: TMenuItemBitmaps;
    MenuItemBitmaps8: TMenuItemBitmaps;
    MenuItemBitmaps9: TMenuItemBitmaps;
    MenuItemBitmaps10: TMenuItemBitmaps;
    MenuItemBitmaps11: TMenuItemBitmaps;
    MenuItemBitmaps12: TMenuItemBitmaps;
    MenuItemBitmaps13: TMenuItemBitmaps;
    MenuItemBitmaps14: TMenuItemBitmaps;
    MenuItemBitmaps15: TMenuItemBitmaps;
    MenuItemBitmaps16: TMenuItemBitmaps;
    MenuItemBitmaps17: TMenuItemBitmaps;
    MenuItemBitmaps18: TMenuItemBitmaps;
    MenuItemBitmaps19: TMenuItemBitmaps;
    MenuItemBitmaps20: TMenuItemBitmaps;
    MenuItemBitmaps21: TMenuItemBitmaps;
    MenuItemBitmaps22: TMenuItemBitmaps;
    MenuItemBitmaps23: TMenuItemBitmaps;
    MenuItemBitmaps24: TMenuItemBitmaps;
    MenuItemBitmaps25: TMenuItemBitmaps;
    MenuItemBitmaps26: TMenuItemBitmaps;
    MenuItemBitmaps27: TMenuItemBitmaps;
    MenuItemBitmaps28: TMenuItemBitmaps;
    MenuItemBitmaps29: TMenuItemBitmaps;
    MenuItemBitmaps30: TMenuItemBitmaps;
    MenuItemBitmaps31: TMenuItemBitmaps;
    MenuItemBitmaps32: TMenuItemBitmaps;
    MenuItemBitmaps33: TMenuItemBitmaps;
    Status: TStatusBar;
    open: TOpenDialog;
    save: TSaveDialog;
    min: TToolbarButton97;
    max: TToolbarButton97;
    stop: TToolbarButton97;
    N18: TMenuItem;
    Convert1: TMenuItem;
    ProjectToBatchFileCompile1: TMenuItem;
    BatchFileToProject1: TMenuItem;
    MenuItemBitmaps34: TMenuItemBitmaps;
    PopupMenu982: TPopupMenu98;
    SpeedBar2: TMenuItem;
    AutoCommandBar1: TMenuItem;
    SubRoutinesBar2: TMenuItem;
    MostRecentUsedBar2: TMenuItem;
    ProjectBar2: TMenuItem;
    N19: TMenuItem;
    ShowAll1: TMenuItem;
    MenuItemBitmaps35: TMenuItemBitmaps;
    autorepeat: TToolbarButton97;
    Repeat1: TMenuItem;
    autofav: TToolbarButton97;
    automenu: TPopupMenu98;
    Open3: TMenuItem;
    Edit3: TMenuItem;
    N20: TMenuItem;
    ToolbarSep978: TToolbarSep97;
    MenuItemBitmaps36: TMenuItemBitmaps;
    MenuItemBitmaps37: TMenuItemBitmaps;
    ToolbarSep979: TToolbarSep97;
    runbut: TToolbarButton97;
    Tile1: TMenuItem;
    ToolbarSep9710: TToolbarSep97;
    childtool: TToolbarButton97;
    childcom: TToolbarButton97;
    childaccs: TToolbarButton97;
    childauto: TToolbarButton97;
    childtask: TToolbarButton97;
    N21: TMenuItem;
    ShowAll2: TMenuItem;
    MenuItemBitmaps38: TMenuItemBitmaps;
    N22: TMenuItem;
    menucom: TMenuItem;
    menuaccs: TMenuItem;
    menuauto: TMenuItem;
    menutask: TMenuItem;
    N23: TMenuItem;
    menutool: TMenuItem;
    N24: TMenuItem;
    Close2: TMenuItem;
    CloseAll: TMenuItem;
    MenuItemBitmaps39: TMenuItemBitmaps;
    MenuItemBitmaps40: TMenuItemBitmaps;
    autofav1: TMenuItem;
    autofav2: TMenuItem;
    autofav3: TMenuItem;
    autofav4: TMenuItem;
    autofav12: TMenuItem;
    autofav22: TMenuItem;
    autofav32: TMenuItem;
    autofav42: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FileNewItemClick(Sender: TObject);
    procedure WindowCascadeItemClick(Sender: TObject);
    procedure UpdateMenuItems(Sender: TObject);
    procedure WindowTileItemClick(Sender: TObject);
    procedure WindowArrangeItemClick(Sender: TObject);
    procedure FileSaveAsItemClick(Sender: TObject);
    procedure CutItemClick(Sender: TObject);
    procedure CopyItemClick(Sender: TObject);
    procedure PasteItemClick(Sender: TObject);
    procedure WindowMinimizeItemClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure maxClick(Sender: TObject);
    procedure minClick(Sender: TObject);
    procedure stopClick(Sender: TObject);
    procedure canvasPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure sublistbutClick(Sender: TObject);
    procedure optionsbutClick(Sender: TObject);
    procedure helpbutClick(Sender: TObject);
    procedure openbutClick(Sender: TObject);
    procedure undobutClick(Sender: TObject);
    procedure Choice1Click(Sender: TObject);
    procedure Printed1Click(Sender: TObject);
    procedure canvasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure REMLine1Click(Sender: TObject);
    procedure childtoolClick(Sender: TObject);
    procedure childcomClick(Sender: TObject);
    procedure childaccsClick(Sender: TObject);
    procedure childautoClick(Sender: TObject);
    procedure childtaskClick(Sender: TObject);
    procedure SpeedBar2Click(Sender: TObject);
    procedure AutoCommandBar1Click(Sender: TObject);
    procedure SubRoutinesBar2Click(Sender: TObject);
    procedure MostRecentUsedBar2Click(Sender: TObject);
    procedure ProjectBar2Click(Sender: TObject);
    procedure ShowAll2Click(Sender: TObject);
    procedure ImageClick(Sender: TObject);
    procedure printbutClick(Sender: TObject);
    procedure CloseAllClick(Sender: TObject);
    procedure Close2Click(Sender: TObject);
    procedure savebutClick(Sender: TObject);
    procedure compbutClick(Sender: TObject);
    procedure Pause1Click(Sender: TObject);
    procedure ClearScreen1Click(Sender: TObject);
    procedure Date1Click(Sender: TObject);
    procedure Time1Click(Sender: TObject);
    procedure ProjectClick(Sender: TObject);
    procedure subbutClick(Sender: TObject);
    procedure subsChange(Sender: TObject);
    procedure projbutClick(Sender: TObject);
    procedure taskbutClick(Sender: TObject);
    procedure AboutBatchCreator1Click(Sender: TObject);
    procedure runbutClick(Sender: TObject);
    procedure PasteasNew1Click(Sender: TObject);
    procedure BatchFileToProject1Click(Sender: TObject);
    procedure combutClick(Sender: TObject);
    procedure DosWindows1Click(Sender: TObject);
    procedure Execut1Click(Sender: TObject);
    procedure IfStatement1Click(Sender: TObject);
    procedure AboutSuite1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure autobutClick(Sender: TObject);
    procedure autorepeatClick(Sender: TObject);
    procedure autofav1Click(Sender: TObject);
    procedure autofav2Click(Sender: TObject);
    procedure autofav3Click(Sender: TObject);
    procedure autofav4Click(Sender: TObject);
    procedure autoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure CreateMDIChild(const Name: string);
    procedure ShowHint(Sender: TObject);
    procedure Dots;
  public
    { Public declarations }

    Child : TMDIChild;
    reg : TRegistry;
    AutoCommand : TRegistry;
    oldcom : string;
    tempstr : string;

    procedure Delay(Num: longint);
    procedure MakeActive(Index : Integer);
    procedure SetNames;
  end;

const
  BUFFLEN = 255;
type
  CHARARRAY = array[0..BUFFLEN] of char;
var
  MainForm: TMainForm;

implementation

{$R *.DFM}

uses  sublist, optunit, choiceunit, printedunit, remunit, comp, subunit, project,
tasks, about, exeunit, ifunit;

procedure TMainForm.FormCreate(Sender: TObject);
begin


     reg := TRegistry.Create;

     if (reg.KeyExists('\Software\Abbsoft\Batch\Position')) then
        begin
        reg.OpenKey('\Software\Abbsoft\Batch\Position', true);
        MainForm.Height := reg.ReadInteger('height');
        MainForm.Left := reg.ReadInteger('left');
        MainForm.Width := reg.ReadInteger('width');
        MainForm.Top := reg.ReadInteger('top');
        if (reg.ReadBool('max') = true) then
           begin
           WindowState := wsMaximized;
           end else
               begin
               WindowState := wsNormal;
               end;
        reg.CloseKey;
        end;

     if (reg.KeyExists('\Software\Abbsoft\Batch\Options')) then
        begin
        reg.OpenKey('\Software\Abbsoft\Batch\Options', true);
        menubar.Options.Title.ColorBegin := StringToColor(reg.ReadString('startcol'));
        menubar.Options.Title.ColorEnd := StringToColor(reg.ReadString('endcol'));
        if(reg.KeyExists('\Software\Abbsoft\Batch\Options\Toolbars'))then
          begin
          RegLoadToolbarPositions(MainForm,'Software\Abbsoft\Batch\Options\Toolbars');
          end;
        reg.CloseKey;
        end;


    AutoCommand := TRegistry.Create;
    AutoCommand.OpenKey('\Software\Abbsoft\Batch\Auto', true);
    SetNames;


    Screen.OnActiveFormChange := UpdateMenuItems;
    Application.OnHint := ShowHint;

end;

procedure TMainForm.ShowHint(Sender: TObject);
begin
  Status.Panels.Items[0].Text := Application.Hint;

  delay(3000);

  Status.Panels.Items[0].Text := 'Batch Creator';

end;

procedure TMainForm.CreateMDIChild(const Name: string);
var
  Child: TMDIChild;
begin
  { create a new MDI child window }
  Child := TMDIChild.Create(Application);
  Child.Caption := Name;
  Title.Caption := ' Batch Creator - '+Name+' ';
end;

procedure TMainForm.FileNewItemClick(Sender: TObject);
begin
  CreateMDIChild('Document ' + IntToStr(MDIChildCount + 1));
end;

procedure TMainForm.FileSaveAsItemClick(Sender: TObject);
begin
Child.prevsave := False;
savebutClick(self);
end;

procedure TMainForm.CutItemClick(Sender: TObject);
begin
Child.memo.CutToClipboard;
end;

procedure TMainForm.CopyItemClick(Sender: TObject);
begin
Child.memo.CopyToClipboard;
end;

procedure TMainForm.PasteItemClick(Sender: TObject);
begin
Child.memo.PasteFromClipboard;
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
//Menus
  //File
  Saveas.Enabled := MDIChildCount > 0;
  Save1.Enabled := MDIChildCount > 0;
  Print.Enabled := MDIChildCount > 0;
  ProjectToBatchFileCompile1.Enabled := MDIChildCount> 0;

  //Edit
  Undo.Enabled := MDIChildCount > 0;
  Cut.Enabled := MDIChildCount > 0;
  Copy.Enabled := MDIChildCount > 0;
  Paste.Enabled := MDIChildCount > 0;
  Find.Enabled := MDIChildCount > 0;
  FindNext.Enabled := MDIChildCount > 0;

  //View Menu
  ProjectInformation.Enabled := MDIChildCount > 0;
  FinishedProject.Enabled := MDIChildCount > 0;
  SubRoutines.Enabled := MDIChildCount > 0;
  Tasks.Enabled := MDIChildCount > 0;
  menucom.Enabled := MDIChildCount > 0;
  menuauto.Enabled := MDIChildCount > 0;
  menutask.Enabled := MDIChildCount > 0;
  menuaccs.Enabled := MDIChildCount > 0;
  menutool.Enabled := MDIChildCount > 0;

  //Options Menu
  Project.Enabled := MDIChildCount > 0;

  //Entire Insert Menu!
  Insert1.Enabled := MDIChildCount > 0;

  //Window
  Window1.Enabled := MDIChildCount > 0;


//Buttons
  savebut.Enabled := MDIChildCount > 0;
  printbut.Enabled := MDIChildCount > 0;

  cutbut.Enabled := MDIChildCount > 0;
  copybut.Enabled := MDIChildCount > 0;
  pastebut.Enabled := MDIChildCount > 0;
  undobut.Enabled := MDIChildCount > 0;


//AutoCommand Button
  autobut.Enabled := MDIChildCount > 0;
  autorepeat.Enabled := MDIChildCount > 0;
  autofav.Enabled := MDIChildCount > 0;

//Subroutines Button and Box
  subbut.Enabled := MDIChildCount > 0;
  subs.Enabled := MDIChildCount > 0;

//Entire Project Bar
  compbut.Enabled := MDIChildCount > 0;
  projbut.Enabled := MDIChildCount > 0;
  sublistbut.Enabled := MDIChildCount > 0;
  taskbut.Enabled := MDIChildCount > 0;
  runbut.Enabled := MDIChildCount > 0;
  childcom.Enabled := MDIChildCount > 0;
  childaccs.Enabled := MDIChildCount > 0;
  childauto.Enabled := MDIChildCount > 0;
  childtask.Enabled := MDIChildCount > 0;
  childtool.Enabled := MDIChildCount > 0;

//Title Bar
  if (MDIChildCount < 1)then
  Title.Caption := ' Batch Creator ';

//Change the Caption in the projects bit of the status bar
  Status.Panels.Items[1].Text := 'Projects:' + IntToStr(MDIChildCount);
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveFormChange := nil;
end;

procedure TMainForm.maxClick(Sender: TObject);
begin

if(WindowState = wsNormal) then
    Begin
    WindowState := wsMaximized;
    max.Caption := '2';
    max.Hint := 'Restore';
    end

    else
    Begin
    WindowState := wsNormal;
    max.Caption:= '1';
    max.Hint := 'Maximize';
    end;
end;


procedure TMainForm.minClick(Sender: TObject);
begin
Application.Minimize;
end;

procedure TMainForm.stopClick(Sender: TObject);
begin
MainForm.Close;
end;

procedure TMainForm.canvasPaint(Sender: TObject);
begin
Dots;
end;

procedure TMainForm.Dots;
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

procedure TMainForm.FormResize(Sender: TObject);
begin
if (WindowState = wsMaximized)then max.Caption := '2'
else max.Caption :='1';
end;

procedure TMainForm.sublistbutClick(Sender: TObject);
begin
sublistform.list.Items := Child.Subs.Items;
sublistform.Show;
end;

procedure TMainForm.optionsbutClick(Sender: TObject);
begin
options.Show;
end;

procedure TMainForm.helpbutClick(Sender: TObject);
begin
Application.HelpCommand(HELP_FINDER, 0);
end;

procedure TMainForm.openbutClick(Sender: TObject);
var
  Child: TMDIChild;
begin
if(open.Execute) then
   Begin
     { create a new MDI child window }
     Child := TMDIChild.Create(Application);
     Child.Caption := ExtractFileName(open.FileName);

     Title.Caption := ' Batch Creator - '+ExtractFileName(open.FileName)+' ';

     //Get Window to open the project

     Child.Open(open.FileName);
   end;
end;

procedure TMainForm.undobutClick(Sender: TObject);
begin
Child.UndoClick(undobut);
end;

procedure TMainForm.Choice1Click(Sender: TObject);
begin
choice.Show;
end;

procedure TMainForm.Printed1Click(Sender: TObject);
begin
printed.Show;
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

procedure TMainForm.FormShow(Sender: TObject);
var
  NewChild: TMDIChild;
begin
     if (ParamCount = 0) then
        FileNewItemClick(MainForm)
     else
     begin
     NewChild := TMDIChild.Create(Application);
     NewChild.Caption := ExtractFileName(ParamStr(1));

     Title.Caption := ' Batch Creator - '+ExtractFileName(ParamStr(1))+' ';

     //Get Window to open the project

     NewChild.Open(ParamStr(1));
     end;

    Child.WindowState := wsMaximized;
end;

procedure TMainForm.Delay(Num: longint);
var
   tc :longint;
begin
        tc :=GetTickCount;
        repeat
              Application.ProcessMessages;
        until ((GetTickCount-tc) >=Num);
end;

procedure TMainForm.REMLine1Click(Sender: TObject);
begin
remform.Show;
end;

procedure TMainForm.childtoolClick(Sender: TObject);
begin
Child.MinPanelClick(self);
end;

procedure TMainForm.childcomClick(Sender: TObject);
begin
Child.Label1Click(self);
end;

procedure TMainForm.childaccsClick(Sender: TObject);
begin
Child.Label2Click(self);
end;

procedure TMainForm.childautoClick(Sender: TObject);
begin
Child.Label3Click(self);
end;

procedure TMainForm.childtaskClick(Sender: TObject);
begin
Child.Label4Click(self);
end;

procedure TMainForm.SpeedBar2Click(Sender: TObject);
begin
speedbar.Visible := not speedbar.Visible;
SpeedBar1.Checked := speedbar.Visible;
SpeedBar2.Checked := speedbar.Visible;
end;

procedure TMainForm.AutoCommandBar1Click(Sender: TObject);
begin
autobar.Visible := not autobar.Visible;
AutoCommandBar1.Checked := autobar.Visible;
//There is a spelling mistake!! THat is why there is two 1s. The one below is for
//the full menu system!!!!
AutoCommandsBar1.Checked := autobar.Visible;
end;

procedure TMainForm.SubRoutinesBar2Click(Sender: TObject);
begin
subbar.Visible := not subbar.Visible;
SubRoutinesBar1.Checked := subbar.Visible;
SubRoutinesBar2.Checked := subbar.Visible;
end;

procedure TMainForm.MostRecentUsedBar2Click(Sender: TObject);
begin
mru.Visible := not mru.Visible;
MostRecentUsedBar1.Checked := mru.Visible;
MostRecentUsedBar2.Checked := mru.Visible;
end;

procedure TMainForm.ProjectBar2Click(Sender: TObject);
begin
projbar.Visible := not projbar.Visible;
ProjectBar1.Checked := projbar.Visible;
ProjectBar2.Checked := projbar.Visible;
end;

procedure TMainForm.ShowAll2Click(Sender: TObject);
begin
//Toolbars!
speedbar.Visible := true;
autobar.Visible := true;
subbar.Visible := true;
mru.Visible := true;
projbar.Visible := true;

//Menus!!
SpeedBar2.Checked := true;
AutoCommandBar1.Checked := true;
SubRoutinesBar2.Checked := true;
MostRecentUsedBar2.Checked := true;
ProjectBar2.Checked := true;
SpeedBar1.Checked := true;
AutoCommandsBar1.Checked := true;
SubRoutinesBar1.Checked := true;
MostRecentUsedBar1.Checked := true;
ProjectBar1.Checked := true;

end;

procedure TMainForm.ImageClick(Sender: TObject);
var
Screen : TPoint;
Icon : TPoint;
begin
Icon.X := 0;
Icon.Y := Image.Height+2;
Screen := Image.ClientToScreen(Icon);
SystemMenu.Popup(Screen.X,Screen.Y);
end;

procedure TMainForm.printbutClick(Sender: TObject);
begin
Child.DocPrint;
end;

procedure TMainForm.MakeActive(Index : Integer);
begin

end;

procedure TMainForm.CloseAllClick(Sender: TObject);
var
  I: Integer;
begin
  with MainForm do
    for I := MDIChildCount-1 downto 0 do
      MDIChildren[I].Close;


end;

procedure TMainForm.Close2Click(Sender: TObject);
begin
Child.Close;
end;

procedure TMainForm.savebutClick(Sender: TObject);
begin
if (Child.prevsave = False) then begin
if (save.Execute) then
   begin
        Child.Save(save.FileName);
   end;
end;
end;

procedure TMainForm.compbutClick(Sender: TObject);
begin
compform.Show;
end;

procedure TMainForm.Pause1Click(Sender: TObject);
begin
Child.Add('Pause');
end;

procedure TMainForm.ClearScreen1Click(Sender: TObject);
begin
Child.Add('Pause');
end;

procedure TMainForm.Date1Click(Sender: TObject);
begin
Child.Add('call getdate.exe');
end;

procedure TMainForm.Time1Click(Sender: TObject);
begin
Child.Add('call gettime.exe');
end;

procedure TMainForm.ProjectClick(Sender: TObject);
begin
options.SelectLast;
options.Show;
end;

procedure TMainForm.subbutClick(Sender: TObject);
begin
subform.Show;
end;

procedure TMainForm.subsChange(Sender: TObject);
begin
Child.Add('goto :'+subs.Text);
end;

procedure TMainForm.projbutClick(Sender: TObject);
begin
proj.Show;
end;

procedure TMainForm.taskbutClick(Sender: TObject);
begin
taskform.Show;
end;

procedure TMainForm.AboutBatchCreator1Click(Sender: TObject);
begin
aboutform.Show;
end;

procedure TMainForm.runbutClick(Sender: TObject);
begin
Child.memo.Lines.SaveToFile('batchrun.bat');
WinExec('batchrun.bat',SW_MAXIMIZE);
end;

procedure TMainForm.PasteasNew1Click(Sender: TObject);
begin
  CreateMDIChild('Document ' + IntToStr(MDIChildCount + 1));
  Child.memo.PasteFromClipboard;
end;

procedure TMainForm.BatchFileToProject1Click(Sender: TObject);
var
   ntFileName : CHARARRAY;
begin
ShellExecute(Application.MainForm.Handle, nil, StrPCopy(ntFileName, 'projcrtr.exe'), nil, nil, SW_SHOW);
end;

procedure TMainForm.combutClick(Sender: TObject);
begin
Application.HelpFile := 'batchcom.hlp';
Application.HelpCommand(HELP_FINDER, 0);
Application.HelpFile := 'batch.hlp';
end;

procedure TMainForm.DosWindows1Click(Sender: TObject);
var
   ntFileName : CHARARRAY;
begin
ShellExecute(Application.MainForm.Handle, nil, StrPCopy(ntFileName,'doswin.exe'), nil, nil, SW_SHOW);
end;

procedure TMainForm.Execut1Click(Sender: TObject);
begin
execute.Show;
end;

procedure TMainForm.IfStatement1Click(Sender: TObject);
begin
ifform.Show;
end;

procedure TMainForm.AboutSuite1Click(Sender: TObject);
var
   ntFileName : CHARARRAY;
begin
ShellExecute(Application.MainForm.Handle, nil, StrPCopy(ntFileName, 'about.exe'), nil, nil, SW_RESTORE);
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

        reg.OpenKey('\Software\Abbsoft\Batch\Position', true);
        reg.WriteInteger('height',Height);
        reg.WriteInteger('left', Left);
        reg.WriteInteger('width', Width);
        reg.WriteInteger('top', Top);
        if (WindowState = wsMaximized) then
           begin
           reg.WriteBool('max', true);
           end else
               begin
               reg.WriteBool('max', false);
               end;
        reg.CloseKey;

        reg.OpenKey('\Software\Abbsoft\Batch\Options', true);
        reg.WriteString('startcol',ColorToString(menubar.Options.Title.ColorBegin));
        reg.WriteString('endcol', ColorToString(menubar.Options.Title.ColorEnd));
        RegSaveToolbarPositions(MainForm,'Software\Abbsoft\Batch\Options\Toolbars');
        reg.CloseKey;
end;

procedure TMainForm.autobutClick(Sender: TObject);
begin
if (auto.Text = '') or (auto.Text = ' ') then
   begin
        Application.MessageBox('You have not entered an AutoCommand. Please try again','Please Enter AutoCommand', MB_ICONEXCLAMATION + MB_OK);
   end
   else
begin
if(AutoCommand.ValueExists(auto.Text) = false) then
     begin
     Application.MessageBox('That AutoCommand does not exist. Please try again','Could Not Find AutoCommand', MB_ICONEXCLAMATION + MB_OK);
     end
else begin
     Child.Add(AutoCommand.ReadString(auto.Text));
     oldcom := auto.Text;
     auto.Clear;
     end;
end;
end;

procedure TMainForm.autorepeatClick(Sender: TObject);
begin
     Child.Add(AutoCommand.ReadString(oldcom));
end;

procedure TMainForm.autofav1Click(Sender: TObject);
begin
tempstr := AutoCommand.ReadString('favourite1');
Child.Add(AutoCommand.ReadString(tempstr));
end;

procedure TMainForm.autofav2Click(Sender: TObject);
begin
tempstr := AutoCommand.ReadString('favourite2');
Child.Add(AutoCommand.ReadString(tempstr));
end;

procedure TMainForm.autofav3Click(Sender: TObject);
begin
tempstr := AutoCommand.ReadString('favourite3');
Child.Add(AutoCommand.ReadString(tempstr));
end;

procedure TMainForm.autofav4Click(Sender: TObject);
begin
tempstr := AutoCommand.ReadString('favourite4');
Child.Add(AutoCommand.ReadString(tempstr));
end;

procedure TMainForm.autoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if(Key = VK_RETURN) then autobutClick(auto);
end;

procedure TMainForm.SetNames;
begin
    autofav1.Caption := AutoCommand.ReadString('favourite1');
    autofav2.Caption := AutoCommand.ReadString('favourite2');
    autofav3.Caption := AutoCommand.ReadString('favourite3');
    autofav4.Caption := AutoCommand.ReadString('favourite4');
    autofav12.Caption := AutoCommand.ReadString('favourite1');
    autofav22.Caption := AutoCommand.ReadString('favourite2');
    autofav32.Caption := AutoCommand.ReadString('favourite3');
    autofav42.Caption := AutoCommand.ReadString('favourite4');
end;

end.
