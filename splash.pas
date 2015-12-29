unit splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Cbevel, Animate;

type
  TSplashForm = class(TForm)
    ColorBevel1: TColorBevel;
    AnimatedImage1: TAnimatedImage;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }


    procedure Delay(Num: longint);
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.DFM}

procedure TSplashForm.Delay(Num: longint);
var
   tc :longint;
begin
        tc :=GetTickCount;
        repeat
              Application.ProcessMessages;
        until ((GetTickCount-tc) >=Num);
end;

procedure TSplashForm.FormCreate(Sender: TObject);
begin
Brush.Style := bsClear;
end;

procedure TSplashForm.FormActivate(Sender: TObject);
begin
Delay(2000);
end;

end.
