unit eggunit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  urllabel, ExtCtrls, StdCtrls, Animate;

type
  Teggform = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label4: TLabel;
    URLLabel1: TURLLabel;
    URLLabel2: TURLLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    AnimatedImage1: TAnimatedImage;
    AnimatedImage2: TAnimatedImage;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    URLLabel3: TURLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  eggform: Teggform;

implementation

{$R *.DFM}

end.
