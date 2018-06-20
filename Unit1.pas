unit Unit1;

{$MODE Delphi}

interface

uses
  Messages, SysUtils, Graphics, Forms, INIFiles, ThdTimer, ExtCtrls, Classes, Controls, StdCtrls,
  LResources;

type TOkienko = (toNowaGra, toRekordy, toNowyRekord, toUstawienia, toInfo, toHelp,
                 toWyjscie, toKoniecGry, toKasujRekordy, toError, toLoadGame, toSaveGame,
                 toOverwrite);
type
  TForm1 = class(TForm)
    OS1: TLabel;
    OS2: TLabel;
    OS3: TLabel;
    OS4: TLabel;
    OS5: TLabel;
    OS6: TLabel;
    OS7: TLabel;
    OS8: TLabel;
    OS9: TLabel;
    OSUp: TImage;
    OSDown: TImage;
    Check1: TImage;
    Check2: TImage;
    Opt1: TLabel;
    Opt2: TLabel;
    Opt3: TLabel;
    Ilek1: TImage;
    ilek2: TImage;
    Ilek3: TImage;
    kolor5: TLabel;
    kolor7: TLabel;
    kolor9: TLabel;
    Opt4: TLabel;
    optlang: TLabel;
    langb: TImage;
    langn: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Plansza: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PokazNowe: TThreadedTimer;
    Podskoki: TThreadedTimer;
    Ruch: TThreadedTimer;
    UsunLinie: TThreadedTimer;
    PokazNastepne: TThreadedTimer;
    Nastepne: TImage;
    Okno1: TImage;
    okno2: TImage;
    okno2ok: TImage;
    okno2anuluj: TImage;
    okno2caption: TLabel;
    oknocaption: TLabel;
    infook: TImage;
    infotext: TLabel;
    InfoKulka: TImage;
    InfoAppName: TLabel;
    InfoCopy: TLabel;
    InfoMail: TLabel;
    Infowww: TLabel;
    ScoreDelete: TImage;
    ScoreOK: TImage;
    ScoreList: TLabel;
    ScorePoints: TLabel;
    NewScoreText: TLabel;
    NewScoreOK: TImage;
    NewScoreEdit: TEdit;
    okno2tekst: TLabel;
    SaveName: TEdit;
    SaveAs: TLabel;
    procedure okno2okClick(Sender: TObject);
    procedure okno2anulujClick(Sender: TObject);
    procedure okno2anulujMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure okno2anulujMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure okno2okMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure okno2okMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PokazNastepneTimer(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure UsunLinieTimer(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure RuchTimer(Sender: TObject);
    procedure PlanszaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PodskokiTimer(Sender: TObject);
    //procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PokazNoweTimer(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Label1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DisableFontSmoothing(LabelName: TLabel);
    procedure ChangeColor(Sender: TObject; Msg: Integer);
    procedure ChangeColorOk(Sender: TObject; Msg: Integer);
    procedure ChangeColorAnuluj(Sender: TObject; Msg: Integer);
    procedure MyszGora(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MyszDol(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Okno2P1klik;
    procedure InfoClose;
    procedure PathFind;
    procedure Losuj;
    procedure UkryjZapisz;
    procedure LabelColor(Sender: TObject; Msg: Integer);
    procedure OSColor(Sender: TObject; Msg: Integer);
    procedure UkryjUstawienia;
    procedure Zamaluj(x, y, kx, ky: Integer; extra: string = '');
    procedure Zamaluj2(ky: Integer);
    procedure Zamaluj3(x, y, kx, ky: Integer);
    procedure WyczyscPlansze;
    procedure KoniecGry;
    procedure SprawdzLinie;
    procedure PokazOkno;
    procedure Pauza(p: Boolean);
    procedure NowaGra;
    procedure ZmienJezyk;
    procedure GrajDzwiek(s: PAnsiChar);
    procedure WczytajWyniki;
    procedure SaveLoad(Sender: TObject);
    //procedure WczytajGre(name: string);
    //procedure ZapiszGre(name: string);
    procedure ZapiszWyniki;
    procedure KasujWyniki;
    procedure NoNextShow;
    procedure SaveOSClick(Sender: TObject);
    procedure infookClick(Sender: TObject);
    procedure infookMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure infookMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure InfoMailClick(Sender: TObject);
    procedure InfowwwClick(Sender: TObject);
    procedure ScoreOKClick(Sender: TObject);
    procedure ScoreDeleteMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScoreOKMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScoreDeleteMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScoreOKMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ScoreDeleteClick(Sender: TObject);
    procedure NewScoreOKMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NewScoreOKMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NewScoreOKClick(Sender: TObject);
    procedure Check1Click(Sender: TObject);
    procedure Check2Click(Sender: TObject);
    procedure Ilek1Click(Sender: TObject);
    procedure ilek2Click(Sender: TObject);
    procedure Ilek3Click(Sender: TObject);
    procedure langbMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure langbMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure langnMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure langnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OSUpMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OSUpMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OSDownMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OSDownMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4Click(Sender: TObject);
  private
    procedure WndProc(var Mesg : TMessage); override;
  public
  end;

type
  TPole = packed record
    x, y, wartosc: Integer;
  end;

type
  TGra = packed record
    punkty, ile_kolorow, ile_losuj: Integer;
    pokazuj_nastepne_kolory, dzwiek, czy_usunal: Boolean;
    jezyk: string;
    plansza: array[0..8, 0..8] of Integer;
    nastepne_kolory: array[0..4] of Integer;
    koniec: Boolean;
    nowyrekord: Boolean;
  end;

type
  TOpcje = packed record
    dzwiek, pokazuj_nastepne_kolory: Boolean;
    ile_kolorow: Byte;
    jezyk: string;
    langindex: Integer;
  end;

type
  TUndo = packed record
    punkty: Integer;
    plansza: array[0..8, 0..8] of Integer;
    nastepne_kolory: array[0..2] of Integer;
    czy_cofac: Boolean;
  end;

type
  TGraphicHintWindow = class(THintWindow)
    constructor Create(AOwner: TComponent); override;
  private
    FActivating: Boolean;
  public
    //procedure ActivateHint(Rect: TRect; const AHint: string); override;
  protected
    procedure Paint; override;
  published
    property Caption;
  end;

var
  Form1: TForm1;
  lx, ly, los, ktora_kulka, przesx, przesy, usun: Integer;
  ruch_kulki: Extended;
  Gra: TGra;
  Opcje: TOpcje;
  Undo: TUndo;
  Trasa: array of TPole;
  pktA, pktB: TPoint;
  bmp: TBitmap;
  jest_Trasa: Boolean = False;
  sprawdz_od_pkt, usun_kulki: array of TPole;
  pauza_tab: array[1..5] of Boolean;
  //IconNotifyData: TNotifyIconData;
  okno: TOkienko;
  wyniki_arr: array[0..9,0..9] of string;
  jezyki_arr: array of string;
  jezykText: array of string;
  ButtonOK, ButtonCancel: array[0..2] of TBitmap;
  Kulki: array[1..9,1..5] of TBitmap;
  MenuButton: array[1..11, 1..3] of TBitmap;
  Hintbmp : TBitmap;
  Check: array[0..1] of TBitmap;
  NoNext: TBitmap;
  Pusty: array[1..5] of TBitmap;
  Arrows: array[1..4, 1..3] of TBitmap;
  OS_arr: array of string;
  Zamaluj_kulki: array[1..9, 1..2] of TBitmap;
  Zamaluj_empty: array[1..2] of TBitmap;
  const grafika: array[0..3] of Byte = (4,3,5,3);

implementation
{$R przyciski.RES}
{$R plansza.RES}
{$R kursor.RES}
{$R dzwiek.RES}
{$R kulki.RES}
{$R arrow.RES}

function StringXOR(const S: string; const Klucz: Byte): string;
var i: Cardinal;
begin
  result:=S;
  for i:=1 to Length(result) do
    result[i]:=Chr(Ord(result[i]) xor Klucz);
end;

function CzyGraAktywna: Boolean;
var x, y: Integer;
    war: Boolean;
begin
  war:=False;
  for x:=0 to 8 do
  begin
    for y:=0 to 8 do
    begin
      if Gra.plansza[x,y]<>0 then
      begin
        war:=True;
        Break;
      end;
    end;
  end;
  result := war;
end;

constructor TGraphicHintWindow.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  with Canvas.Font do
  begin
    Name:='Arial';
    Style:=Style+[fsBold];
    Color:=clBlack;
  end;
end;

procedure TGraphicHintWindow.Paint;
var
  R: TRect;
begin
  R:=ClientRect;
  Inc(R.Left, 2);
  Inc(R.Top, 2);
  with Canvas do
  begin
    Brush.Style:=bsSolid;
    Brush.Color:=clSilver;
    Pen.Color:=clGray;
    Pen.Width:=1;
    Pen.Style:=psSolid;
    Rectangle(0, 0, 24, R.Bottom+1);
    Draw(2, (R.Bottom div 2)-(Hintbmp.Height div 2), Hintbmp);
  end;
  Color:=clWhite;
  Canvas.Brush.Style:=bsClear;
  Canvas.TextOut(26, (R.Bottom div 2)-(Canvas.Textheight(Caption) div 2), Caption);
end;

{procedure TGraphicHintWindow.ActivateHint(Rect: TRect; const AHint: string);
begin
  FActivating:=True;
  try
    Caption:=AHint;
    Inc(Rect.Bottom, 14);
    Rect.Right:=Rect.Right+26;
    UpdateBoundsRect(Rect);
    if Rect.Top+Height>Screen.DesktopHeight then
      Rect.Top:=Screen.DesktopHeight-Height;
    if Rect.Left+Width>Screen.DesktopWidth then
      Rect.Left:=Screen.DesktopWidth-Width;
    if Rect.Left<Screen.DesktopLeft then
      Rect.Left:=Screen.DesktopLeft;
    if Rect.Bottom < Screen.DesktopTop then
      Rect.Bottom:=Screen.DesktopTop;
    SetWindowPos(Handle, HWND_TOPMOST, Rect.Left, Rect.Top, Width, Height, SWP_SHOWWINDOW or SWP_NOACTIVATE);
    Invalidate;
  finally
    FActivating:=False;
  end;
end;     }

{function BitmapToRegion(Bitmap: TBitmap; KolorTla: TColor): HRGN;
var x, y, startx, endx, wd: Integer;
    rgn2: HRGN;
begin
  Result:=CreateRectRgn(0, 0, 0, 0);
  for y:=0 to Bitmap.Height-1 do
  begin
    x:=0;
    wd:=BitMap.Width;
    while x<wd do
    begin
      while (Bitmap.Canvas.Pixels[x,y]=KolorTla) and (x<=wd) do
        Inc(x);
      startx:=x;
      Inc(x);
      while (Bitmap.Canvas.Pixels[x,y]<>KolorTla) and (x<=wd) do
        Inc(x);
      endx:=x;
      if startx<wd then
      begin
        rgn2:=CreateRectRgn(startx+1, y, endx,y+1);
        if rgn2<>0 then
          CombineRgn(Result, Result, rgn2, RGN_OR);
        DeleteObject(rgn2);
      end;
    end;
  end;
end; }

procedure TForm1.FormCreate(Sender: TObject);
var //Region: HRGN;
    petla, kx, ky: Byte;
    ustawienia: TINIFile;
    sr: TSearchRec;
    tmp: Char;
begin
  Hintbmp := TBitmap.Create;
  Hintbmp.LoadFromResourceName(hInstance, 'hint');
  HintWindowClass := TGraphicHintWindow;
  Application.ShowHint := False;
  Application.ShowHint := True;
  Plansza.Enabled:=False;
//  Screen.Cursors[1]:=LoadCursor(hInstance, 'kursor');
  Form1.Cursor:=1;
  Form1.DoubleBuffered:=True;
  Image1.Picture.Bitmap.LoadFromResourceName(hInstance, 'plansza');
  okno2.Picture.Bitmap.LoadFromResourceName(hInstance, 'okienko2');
  okno1.Picture.Bitmap.LoadFromResourceName(hInstance, 'okienko');
  for petla := 1 to 5 do
    Pusty[petla] := TBitmap.Create;
  Pusty[1].LoadFromResourceName(hInstance, 'pusty');
  Pusty[2].LoadFromResourceName(hInstance, 'pustylg');
  Pusty[3].LoadFromResourceName(hInstance, 'pustypg');
  Pusty[4].LoadFromResourceName(hInstance, 'pustyld');
  Pusty[5].LoadFromResourceName(hInstance, 'pustypd');
  NoNext := TBitmap.Create;
  NoNext.LoadFromResourceName(hInstance, 'nok');
  ButtonOK[0] := TBitmap.Create;
  ButtonOK[0].LoadFromResourceName(hInstance, 'OKL');
  ButtonOK[1] := TBitmap.Create;
  ButtonOK[1].LoadFromResourceName(hInstance, 'OKE');
  ButtonOK[2] := TBitmap.Create;
  ButtonOK[2].LoadFromResourceName(hInstance, 'OKD');
  ButtonCancel[0] := TBitmap.Create;
  ButtonCancel[0].LoadFromResourceName(hInstance, 'ANL');
  ButtonCancel[1] := TBitmap.Create;
  ButtonCancel[1].LoadFromResourceName(hInstance, 'ANE');
  ButtonCancel[2] := TBitmap.Create;
  ButtonCancel[2].LoadFromResourceName(hInstance, 'AND');
  Check[0] := TBitmap.Create;
  Check[0].LoadFromResourceName(hInstance, 'CHECK0');
  Check[1] := TBitmap.Create;
  Check[1].LoadFromResourceName(hInstance, 'CHECK1');
  for kx := 1 to 9 do
  begin
    Zamaluj_kulki[kx][1] := TBitmap.Create;
    Zamaluj_kulki[kx][2] := TBitmap.Create;
    Zamaluj_kulki[kx][1].LoadFromResourceName(hInstance, 'b' + IntToStr(kx) + '2h');
    Zamaluj_kulki[kx][2].LoadFromResourceName(hInstance, 'b' + IntToStr(kx) + '2v');
  end;
  Zamaluj_empty[1] := TBitmap.Create;
  Zamaluj_empty[1].LoadFromResourceName(hInstance, 'eh');
  Zamaluj_empty[2] := TBitmap.Create;
  Zamaluj_empty[2].LoadFromResourceName(hInstance, 'ev');
  for kx := 1 to 4 do
  begin
    for ky := 1 to 3 do
    begin
      Arrows[kx,ky] := TBitmap.Create;
      Arrows[kx,ky].Width := 25;
      Arrows[kx,ky].Height := 25;
    end;
    case kx of
      1: tmp := 'D';
      2: tmp := 'U';
      3: tmp := 'L';
      4: tmp := 'R';
    end;
    Arrows[kx,1].LoadFromResourceName(hInstance, tmp+'D');
    Arrows[kx,2].LoadFromResourceName(hInstance, tmp+'U');
    Arrows[kx,3].LoadFromResourceName(hInstance, tmp+'G');
  end;
  for kx := 1 to 9 do
  begin
    for ky := 1 to 5 do
    begin
      Kulki[kx,ky] := TBitmap.Create;
      Kulki[kx,ky].LoadFromResourceName(hInstance, 'b'+IntToStr(kx)+IntToStr(ky));
      Kulki[kx,ky].Width := 41;
      Kulki[kx,ky].Height := 41;
    end;
  end;
  for kx := 1 to 11 do
  begin
     MenuButton[kx,1] := TBitmap.Create;
     MenuButton[kx,2] := TBitmap.Create;
     MenuButton[kx,3] := TBitmap.Create;
     MenuButton[kx,1].Width := 48;
     MenuButton[kx,2].Width := 48;
     MenuButton[kx,3].Width := 48;
     MenuButton[kx,1].Height := 48;
     MenuButton[kx,2].Height := 48;
     MenuButton[kx,3].Height := 48;
     MenuButton[kx,1].LoadFromResourceName(hInstance, 'D'+IntToStr(kx));
     MenuButton[kx,2].LoadFromResourceName(hInstance, 'E'+IntToStr(kx));
     MenuButton[kx,3].LoadFromResourceName(hInstance, 'L'+IntToStr(kx));
  end;
//  Region:=BitmapToRegion(Image1.Picture.Bitmap, clFuchsia);
//  SetWindowRgn(Form1.Handle, Region, True);
  for petla:=0 to ComponentCount-1 do
  begin
    if Components[petla] is TLabel then
    begin
      TLabel(Components[petla]).Font.Name:='Arial';
      DisableFontSmoothing(TLabel(Components[petla]));
    end;
  end;
  for petla:=2 to 12 do
    TImage(FindComponent('Image'+IntToStr(petla))).Picture.Bitmap.Assign(MenuButton[petla-1,3]);
  ustawienia:=TINIFile.Create(ExtractFilePath(Application.ExeName)+'settings.ini');
  Gra.ile_kolorow:=ustawienia.ReadInteger('SETTINGS', 'colors', 5);
  Gra.pokazuj_nastepne_kolory:=ustawienia.ReadBool('SETTINGS', 'next_colors', True);
  Gra.dzwiek:=ustawienia.ReadBool('SETTINGS', 'SOUND', True);
  Gra.jezyk:=ustawienia.ReadString('SETTINGS', 'language', 'English');
  ustawienia.Free;
  ZmienJezyk;
  opcje.langindex := 0;
  if FindFirst(ExtractFilePath(Application.ExeName)+'lang\*.txt', faAnyFile, sr) = 0 then
  begin
    repeat
      begin
        if strpos(PChar(sr.Name), PChar('.txt')) <> nil then
        begin
          SetLength(jezyki_arr, Length(jezyki_arr)+1);
          jezyki_arr[High(jezyki_arr)] := StringReplace(sr.Name, '.txt', '', [rfReplaceAll, rfIgnoreCase]);
          if gra.jezyk = jezyki_arr[High(jezyki_arr)] then
            Opcje.langindex := High(jezyki_arr);
        end;
      end;
    until FindNext(sr) <> 0;
    FindClose(sr);
  end;
  if length(jezyki_arr) = 0 then
  begin
    SetLength(jezyki_arr, 1);
    Opcje.langindex := 0;
    jezyki_arr[0] := 'English';
  end;
  bmp:=TBitmap.Create;
  WyczyscPlansze;
  InfoKulka.Picture.Icon.Assign(application.Icon);
  WczytajWyniki;
end;

procedure TForm1.DisableFontSmoothing(LabelName: TLabel);
//var tagLOGFONT: TLogFont;
begin
//  GetObject(LabelName.Font.Handle, SizeOf(TLogFont), @tagLOGFONT);
//  tagLOGFONT.lfQuality:=ANTIALIASED_QUALITY;
//  LabelName.Font.Handle:=CreateFontIndirect(tagLOGFONT);
end;

procedure TForm1.Label1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
//    ReleaseCapture;
//    Perform(WM_SYSCOMMAND, $F012, 0);
  end;
end;

procedure TForm1.Image11Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  Application.Minimize;
end;

procedure TForm1.WndProc(var Mesg: TMessage);
begin
{  if (Mesg.Msg=WM_USER+1)and((Mesg.lParam=WM_LBUTTONDOWN)) then
  begin
    Form1.Show;
    Pauza(False);
    Shell_NotifyIcon(NIM_DELETE, @IconNotifyData);
  end;}

  if Mesg.LParam = Longint(OS1) then
    OSColor(OS1, Mesg.Msg);
  if Mesg.LParam = Longint(OS2) then
    OSColor(OS2, Mesg.Msg);
  if Mesg.LParam = Longint(OS3) then
    OSColor(OS3, Mesg.Msg);
  if Mesg.LParam = Longint(OS4) then
    OSColor(OS4, Mesg.Msg);
  if Mesg.LParam = Longint(OS5) then
    OSColor(OS5, Mesg.Msg);
  if Mesg.LParam = Longint(OS6) then
    OSColor(OS6, Mesg.Msg);
  if Mesg.LParam = Longint(OS7) then
    OSColor(OS7, Mesg.Msg);
  if Mesg.LParam = Longint(OS8) then
    OSColor(OS8, Mesg.Msg);
  if Mesg.LParam = Longint(OS9) then
    OSColor(OS9, Mesg.Msg);
  if Mesg.LParam = Longint(infowww) then
    LabelColor(infowww, Mesg.Msg);
  if Mesg.LParam = Longint(infomail) then
    LabelColor(infomail, Mesg.Msg);
  if Mesg.LParam = Longint(Image2) then
    ChangeColor(Image2, Mesg.Msg);
  if Mesg.LParam = Longint(Image3) then
    ChangeColor(Image3, Mesg.Msg);
  if Mesg.LParam = Longint(Image4) then
    ChangeColor(Image4, Mesg.Msg);
  if Mesg.LParam = Longint(Image5) then
    ChangeColor(Image5, Mesg.Msg);
  if Mesg.LParam = Longint(Image6) then
    ChangeColor(Image6, Mesg.Msg);
  if Mesg.LParam = Longint(Image7) then
    ChangeColor(Image7, Mesg.Msg);
  if Mesg.LParam = Longint(Image8) then
    ChangeColor(Image8, Mesg.Msg);
  if Mesg.LParam = Longint(Image9) then
    ChangeColor(Image9, Mesg.Msg);
  if Mesg.LParam = Longint(Image10) then
    ChangeColor(Image10, Mesg.Msg);
  if Mesg.LParam = Longint(Image11) then
    ChangeColor(Image11, Mesg.Msg);
  if Mesg.LParam = Longint(Image12) then
    ChangeColor(Image12, Mesg.Msg);
  if Mesg.LParam = Longint(okno2ok) then
    ChangeColorOk(okno2ok, Mesg.Msg);
  if Mesg.LParam = Longint(okno2anuluj) then
    ChangeColorAnuluj(okno2anuluj, Mesg.Msg);
  if (Mesg.LParam = Longint(infook)) and (okno = toInfo) then
    ChangeColorOk(infook, Mesg.Msg);
  if (Mesg.LParam = Longint(infook)) and (okno = toLoadGame) then
    ChangeColorAnuluj(infook, Mesg.Msg);
  if Mesg.LParam = Longint(ScoreOK) then
    ChangeColorOk(ScoreOK, Mesg.Msg);
  if Mesg.LParam = Longint(ScoreDelete) then
    ChangeColorAnuluj(ScoreDelete, Mesg.Msg);
  if Mesg.LParam = Longint(NewScoreOK) then
    ChangeColorOk(NewScoreOK, Mesg.Msg);
  inherited WndProc(Mesg) ;
end;

procedure TForm1.ChangeColorOk(Sender: TObject; Msg: Integer);
Begin
  if Sender is TImage then
  begin
    if((Okno1.Visible=True) and (Okno2.Visible=True)) then
    begin
      ScoreOK.Picture.Bitmap.Assign(ButtonOK[0]);
      {if (Sender as TImage).Name <> 'ScoreOK' then
      begin
        if(Msg=CM_MOUSELEAVE) then
          (Sender as TImage).Picture.Bitmap.Assign(ButtonOK[0])
        else
        if (Msg=CM_MOUSEENTER) then
          (Sender as TImage).Picture.Bitmap.Assign(ButtonOK[1]);
      end;}
    end else
    begin
      {if(Msg=CM_MOUSELEAVE) then
        (Sender as TImage).Picture.Bitmap.Assign(ButtonOK[0])
      else
      if (Msg=CM_MOUSEENTER) then
        (Sender as TImage).Picture.Bitmap.Assign(ButtonOK[1]);
    }end;
  end;
end;

procedure TForm1.ChangeColorAnuluj(Sender: TObject; Msg: Integer);
Begin
  if Sender is TImage then
  begin
    if((Okno1.Visible=True) and (Okno2.Visible=True)) then
    begin
       ScoreDelete.ShowHint:=False;
       ScoreDelete.Picture.Bitmap.Assign(ButtonCancel[0]);
       if (Sender as TImage).Name <> 'ScoreDelete' then
       begin
         {if(Msg=CM_MOUSELEAVE) then
            (Sender as TImage).Picture.Bitmap.Assign(ButtonCancel[0])
        else
          if (Msg=CM_MOUSEENTER) then
            (Sender as TImage).Picture.Bitmap.Assign(ButtonCancel[1]);
       }end;
    end else
    begin
      ScoreDelete.ShowHint:=True;
      {if(Msg=CM_MOUSELEAVE) then
        (Sender as TImage).Picture.Bitmap.Assign(ButtonCancel[0])
      else
      if (Msg=CM_MOUSEENTER) then
        (Sender as TImage).Picture.Bitmap.Assign(ButtonCancel[1]);
    }end;
  end;
end;

procedure TForm1.ChangeColor(Sender: TObject; Msg: Integer);
Begin
  if Sender is TImage then
  begin
    if((Okno1.Visible=False) and (Okno2.Visible=False)) then
    begin
      (Sender as TImage).ShowHint:=True;
      {if(Msg=CM_MOUSELEAVE) then
        (Sender as TImage).Picture.Bitmap.Assign(MenuButton[(Sender as TImage).Tag,3])
      else
      if (Msg=CM_MOUSEENTER) then
      begin
        GrajDzwiek('enter');
        (Sender as TImage).Picture.Bitmap.Assign(MenuButton[(Sender as TImage).Tag,2]);
      end; }
    end else
    begin
      (Sender as TImage).ShowHint:=False;
      (Sender as TImage).Picture.Bitmap.Assign(MenuButton[(Sender as TImage).Tag,3]);
    end;
  end;
end;

procedure TForm1.MyszGora(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  (Sender as TImage).Picture.Bitmap.Assign(MenuButton[(Sender as TImage).Tag,2]);
end;

procedure TForm1.MyszDol(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  (Sender as TImage).Picture.Bitmap.Assign(MenuButton[(Sender as TImage).Tag,1]);
end;

function SprawdzCzyPunktB(px, py: Integer): Boolean;
begin
  if (px=pktB.X) and (py=pktB.Y) then
    result:=True
  else
    result:=False;
end;

procedure TForm1.PathFind;
var temp_tab: array[0..8, 0..8] of Integer;
    x, y, k: Integer;
    szukaj: Boolean;
begin
  for x:=0 to 8 do
  begin
    for y:=0 to 8 do
    begin
      if Gra.plansza[x,y]<>0 then
        temp_tab[x,y]:=-1
      else
        temp_tab[x,y]:=0;
    end;
  end;

  if (pktA.X+1<9) and (temp_tab[pktA.X+1,pktA.Y]=0) then
    temp_tab[pktA.X+1,pktA.Y]:=1;
  if (pktA.X-1>-1) and (temp_tab[pktA.X-1,pktA.Y]=0) then
    temp_tab[pktA.X-1,pktA.Y]:=1;
  if (pktA.Y+1<9) and (temp_tab[pktA.X,pktA.Y+1]=0) then
    temp_tab[pktA.X,pktA.Y+1]:=1;
  if (pktA.Y-1>-1) and (temp_tab[pktA.X,pktA.Y-1]=0) then
    temp_tab[pktA.X,pktA.Y-1]:=1;

  k:=0;
  szukaj:=True;
  jest_trasa:=False;

  while szukaj do
  begin
    szukaj:=False;
    k:=k+1;
    for x:=0 to 8 do
    begin
      for y:=0 to 8 do
      begin
        if temp_tab[x,y]=k then
        begin
          if (x=pktB.X) and (y=pktB.Y) then
          begin
            jest_trasa:=True;
            Break;
          end;
          if (y+1<9) and (temp_tab[x,y+1]=0) then
          begin
            szukaj:=True;
            temp_tab[x,y+1]:=k+1;
          end;
          if (y-1>-1) and (temp_tab[x,y-1]=0) then
          begin
            szukaj:=True;
            temp_tab[x,y-1]:=k+1;
          end;
          if (x-1>-1) and (temp_tab[x-1,y]=0) then
          begin
            szukaj:=True;
            temp_tab[x-1,y]:=k+1;
          end;
          if (x+1<9) and (temp_tab[x+1,y]=0) then
          begin
            szukaj:=True;
            temp_tab[x+1,y]:=k+1;
          end;
        end;
      end;
      if jest_trasa then Break;
    end;
  end;
  temp_tab[pktA.X, pktA.Y]:=0;

  if jest_trasa then
  begin
    SetLength(Trasa, temp_tab[pktB.X,pktB.Y]+1);
    Trasa[High(Trasa)].x:=pktB.X;
    Trasa[High(Trasa)].y:=pktB.Y;
    Trasa[High(Trasa)].wartosc:=Gra.plansza[pktA.X, pktA.Y];
    for x:=High(Trasa) downto 2 do
    begin
      if (Trasa[x].X+1<9) and (temp_tab[Trasa[x].X+1, Trasa[x].Y]=x-1) then
      begin
        Trasa[x-1].X:=Trasa[x].X+1;
        Trasa[x-1].Y:=Trasa[x].Y;
        Trasa[x-1].wartosc:=Gra.plansza[pktA.X, pktA.Y];
      end else
      if (Trasa[x].X-1>-1) and (temp_tab[Trasa[x].X-1, Trasa[x].Y]=x-1) then
      begin
        Trasa[x-1].X:=Trasa[x].X-1;
        Trasa[x-1].Y:=Trasa[x].Y;
        Trasa[x-1].wartosc:=Gra.plansza[pktA.X, pktA.Y];
      end else
      if (Trasa[x].Y-1>-1) and (temp_tab[Trasa[x].X, Trasa[x].Y-1]=x-1) then
      begin
        Trasa[x-1].X:=Trasa[x].X;
        Trasa[x-1].Y:=Trasa[x].Y-1;
        Trasa[x-1].wartosc:=Gra.plansza[pktA.X, pktA.Y];
      end else
      if (Trasa[x].Y+1<9) and (temp_tab[Trasa[x].X, Trasa[x].Y+1]=x-1) then
      begin
        Trasa[x-1].X:=Trasa[x].X;
        Trasa[x-1].Y:=Trasa[x].Y+1;
        Trasa[x-1].wartosc:=Gra.plansza[pktA.X, pktA.Y];
      end;
    end;
    Trasa[0].x:=pktA.X;
    Trasa[0].y:=pktA.Y;
    Trasa[0].wartosc:=Gra.plansza[pktA.X, pktA.Y];
  end;
end;

procedure TForm1.NowaGra;
var x, y: Integer;
begin
  Undo.czy_cofac := False;
  for x:=0 to 8 do
  begin
    for y:=0 to 8 do
    begin
      Gra.plansza[x,y]:=0;
    end;
  end;
  for x:=1 to 5 do
    pauza_tab[x]:=False;
  Pauza(False);
  PokazNowe.Enabled:=False;
  Podskoki.Enabled:=False;
  Ruch.Enabled:=False;
  UsunLinie.Enabled:=False;
  PokazNastepne.Enabled:=False;
  Plansza.Enabled:=True;
  WyczyscPlansze;
  Gra.koniec := False;
  pktA.X:=-1;
  pktA.Y:=-1;
  pktB.X:=-1;
  pktB.Y:=-1;
  Gra.punkty:=0;
  Label4.Caption:='0';
  Gra.ile_losuj:=5;
  Gra.nowyrekord:=False;
  SetLength(sprawdz_od_pkt, 5);
  Gra.czy_usunal:=False;
  ktora_kulka:=1;
 if gra.pokazuj_nastepne_kolory = False then
   NoNextShow;
 Losuj;
 PokazNowe.Enabled:=True;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  Pauza(True);
  if (CzyGraAktywna=False) or (gra.koniec=true) then
  begin
    NowaGra;
  end else
  begin
    okno:=toNowaGra;
    PokazOkno;
  end;
end;

procedure TForm1.Losuj;
var x: Integer;
begin
  Randomize;
  for x:=0 to Gra.ile_losuj-1 do
  begin
    Gra.nastepne_kolory[x]:=Random(Gra.ile_kolorow)+1;
  end;
end;

procedure TForm1.PokazNoweTimer(Sender: TObject);
var pola: TStringList;
    x, y: Integer;
begin
  pola:=TStringList.Create;
  if Gra.ile_losuj>0 then
  begin
    if ktora_kulka>3 then
      ktora_kulka:=1;
    case ktora_kulka of
      1: begin
           Randomize;
           for x:=0 to 8 do
           begin
             for y:=0 to 8 do
             begin
               if Gra.plansza[x,y]=0 then
                 pola.Add(IntToStr(x)+';'+IntToStr(y));
             end;
           end;
           if pola.Count>0 then
           begin
             GrajDzwiek('pokaz');
             los:=Random(pola.Count);
             lx:=StrToInt(Copy(pola.Strings[los], 0, Pos(';', pola.Strings[los])-1));
             ly:=StrToInt(Copy(pola.Strings[los], Pos(';', pola.Strings[los])+1, Length(pola.Strings[los])));
             Zamaluj(lx*45, ly*45, Gra.nastepne_kolory[Gra.ile_losuj-1], ktora_kulka);
             sprawdz_od_pkt[Gra.ile_losuj-1].x:=lx;
             sprawdz_od_pkt[Gra.ile_losuj-1].y:=ly;
             sprawdz_od_pkt[Gra.ile_losuj-1].wartosc:=Gra.nastepne_kolory[Gra.ile_losuj-1];
           end else
             Gra.ile_losuj:=0;
         end;
      2: begin
           Zamaluj(lx*45, ly*45, Gra.nastepne_kolory[Gra.ile_losuj-1], ktora_kulka);
         end;
      3: begin
           Zamaluj(lx*45, ly*45, Gra.nastepne_kolory[Gra.ile_losuj-1], ktora_kulka);
           Gra.plansza[lx,ly]:=Gra.nastepne_kolory[Gra.ile_losuj-1];
           Dec(Gra.ile_losuj, 1);
         end;
    end;
    Inc(ktora_kulka, 1);
  end else
  begin
    PokazNowe.Enabled:=False;
    SprawdzLinie;
    if not Gra.czy_usunal then
    begin
      Gra.ile_losuj:=3;
      SetLength(sprawdz_od_pkt, 3);
      ktora_kulka:=1;
      Losuj;
      if(Gra.pokazuj_nastepne_kolory) then
        PokazNastepne.Enabled:=True;
    end;
  end;
  pola.Free;
end;

procedure TForm1.Zamaluj(x, y, kx, ky: Integer; extra: string = '');
var tmpx, tmpy: Integer;
begin
  if (kx = 0) and (ky = 0) then
  begin
    tmpx := x div 45;
    tmpy := y div 45;
    if extra = '' then
    begin
      if (tmpx = 0) and (tmpy = 0) then
        Plansza.Picture.Bitmap.Canvas.Draw(x, y, Pusty[2])
      else
      if (tmpx = 8) and (tmpy = 0) then
        Plansza.Picture.Bitmap.Canvas.Draw(x, y, Pusty[3])
      else
      if (tmpx = 0) and (tmpy = 8) then
        Plansza.Picture.Bitmap.Canvas.Draw(x, y, Pusty[4])
      else
      if (tmpx = 8) and (tmpy = 8) then
        Plansza.Picture.Bitmap.Canvas.Draw(x, y, Pusty[5])
      else
        Plansza.Picture.Bitmap.Canvas.Draw(x, y, Pusty[1]);
    end else
    begin
      if extra = 'ev' then
        Plansza.Picture.Bitmap.Canvas.Draw(x + 2, y + 2, Zamaluj_empty[2])
      else
      if extra = 'eh' then
        Plansza.Picture.Bitmap.Canvas.Draw(x + 2, y + 2, Zamaluj_empty[1]);
    end;
  end else
  begin
    if extra = '' then
      Plansza.Picture.Bitmap.Canvas.Draw(x + 2, y + 2, Kulki[kx,ky])
    else
    if extra = 'v' then
      Plansza.Picture.Bitmap.Canvas.Draw(x + 2, y + 2, Zamaluj_kulki[kx,2])
    else
    if extra = 'h' then
      Plansza.Picture.Bitmap.Canvas.Draw(x + 2, y + 2, Zamaluj_kulki[kx,1])
  end;
end;

procedure TForm1.Zamaluj2(ky: Integer);
var x, y: Integer;
begin
  if gra.pokazuj_nastepne_kolory then
  begin
    y:=0;
    for x:=2 downto 0 do
    begin
      Nastepne.Picture.Bitmap.Canvas.Draw((x*45)+2, 2, Kulki[Gra.nastepne_kolory[y], ky]);
      Inc(y, 1);
    end;
  end;
end;

{procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  bmp.Free;
  Finalize(sprawdz_od_pkt);
  Finalize(usun_kulki);
  Finalize(Trasa);
end;}

procedure TForm1.WyczyscPlansze;
begin
  bmp.Canvas.Brush.Color:=clSilver;
  bmp.Canvas.Brush.Style:=bsSolid;
  bmp.Canvas.Pen.Width:=1;
  bmp.Canvas.Pen.Style:=psSolid;
  bmp.Canvas.Pen.Color:=clSilver;
  Plansza.Picture.Bitmap.LoadFromResourceName(hInstance, 'siatka');
  Plansza.Picture.Bitmap.Canvas.Brush.Color:=clSilver;
  Plansza.Picture.Bitmap.Canvas.Brush.Style:=bsSolid;
  Plansza.Picture.Bitmap.Canvas.Pen.Width:=1;
  Plansza.Picture.Bitmap.Canvas.Pen.Style:=psSolid;
  Plansza.Picture.Bitmap.Canvas.Pen.Color:=clSilver;
  bmp.Width:=135;
  bmp.Height:=45;
  bmp.Canvas.Rectangle(0, 0, bmp.Width, bmp.Height);
  Nastepne.Picture.Bitmap.Assign(bmp);
  bmp.Width:=45;
  bmp.Height:=45;
end;

procedure TForm1.PlanszaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var ux, uy: Byte;
begin
  if (PokazNowe.Enabled=False) and (Ruch.Enabled=False) and (PokazNastepne.Enabled=False) and (UsunLinie.Enabled=False)then
  begin
    if Gra.plansza[X div 45,Y div 45]>0 then
    begin
      if (X div 45<>pktA.X) or (Y div 45<>pktA.Y) then
      begin
        GrajDzwiek('klik');
        Undo.punkty := Gra.punkty;
        for ux := 0 to 8 do
        begin
          for uy := 0 to 8 do
          begin
            Undo.plansza[ux,uy] := Gra.plansza[ux,uy];
          end;
          if(ux < 3) then
          begin
            Undo.nastepne_kolory[ux] := Gra.nastepne_kolory[ux];
          end;
        end;
        Podskoki.Enabled:=False;
        ktora_kulka:=0;
        if pktA.X<>-1 then
          Zamaluj(pktA.X*45, pktA.Y*45, Gra.plansza[pktA.X,pktA.Y], 3);
        pktA.X:=X div 45;
        pktA.Y:=Y div 45;
        Podskoki.Enabled:=True;
      end;
    end else
    begin
      if pktA.X<>-1 then
      begin
        pktB.X:=X div 45;
        pktB.Y:=Y div 45;
        PathFind;
        if jest_trasa then
        begin
          GrajDzwiek('klik');
          Undo.czy_cofac := True;
          Podskoki.Enabled:=False;
          Gra.plansza[pktA.X,pktA.Y]:=0;
          pktA.X:=-1;
          pktA.Y:=-1;
          ruch_kulki:=0.5;
          Ruch.Enabled:=True;
        end else
          GrajDzwiek('noway');
      end;  
    end;
  end;
end;

procedure TForm1.PodskokiTimer(Sender: TObject);
begin
  if ktora_kulka > 3 then
    ktora_kulka := 0;
  Zamaluj(pktA.X * 45, pktA.Y * 45, Gra.plansza[pktA.X,pktA.Y], grafika[ktora_kulka]);
  Inc(ktora_kulka, 1);
end;

procedure TForm1.RuchTimer(Sender: TObject);
begin
  if ruch_kulki<=High(Trasa) then
  begin
    if Frac(ruch_kulki)=0 then
    begin
      if przesx > 0 then
        Zamaluj(Trasa[Trunc(ruch_kulki)].X*45+przesx, Trasa[Trunc(ruch_kulki)].Y*45+przesy, 0, 0, 'ev')
      else
      if przesx < 0 then
        Zamaluj(Trasa[Trunc(ruch_kulki)].X*45+przesx-1, Trasa[Trunc(ruch_kulki)].Y*45+przesy, 0, 0, 'ev')
      else
      if przesy > 0 then
        Zamaluj(Trasa[Trunc(ruch_kulki)].X*45+przesx, Trasa[Trunc(ruch_kulki)].Y*45+przesy, 0, 0, 'eh')
      else
      if przesy < 0 then
        Zamaluj(Trasa[Trunc(ruch_kulki)].X*45+przesx, Trasa[Trunc(ruch_kulki)].Y*45+przesy-1, 0, 0, 'eh');
      Zamaluj(Trasa[Trunc(ruch_kulki)].X*45, Trasa[Trunc(ruch_kulki)].Y*45, Trasa[0].wartosc, 3);
    end else
    begin
      if Trasa[Trunc(ruch_kulki)+1].X>Trasa[Trunc(ruch_kulki)].X then
      begin
        przesx:=-22;
        przesy:=0;
      end else
      if Trasa[Trunc(ruch_kulki)+1].X<Trasa[Trunc(ruch_kulki)].X then
      begin
        przesx:=22;
        przesy:=0;
      end else
      if Trasa[Trunc(ruch_kulki)+1].Y>Trasa[Trunc(ruch_kulki)].Y then
      begin
        przesx:=0;
        przesy:=-22;
      end else
      if Trasa[Trunc(ruch_kulki)+1].Y<Trasa[Trunc(ruch_kulki)].Y then
      begin
        przesx:=0;
        przesy:=22;
      end;
      Zamaluj(Trasa[Trunc(ruch_kulki)].X*45, Trasa[Trunc(ruch_kulki)].Y*45, 0, 0);
      if przesx > 0 then
        Zamaluj(Trasa[Trunc(ruch_kulki)+1].X*45+przesx, Trasa[Trunc(ruch_kulki)+1].Y*45+przesy, Trasa[0].wartosc, 2, 'v')
      else
      if przesx < 0 then
        Zamaluj(Trasa[Trunc(ruch_kulki)+1].X*45+przesx-1, Trasa[Trunc(ruch_kulki)+1].Y*45+przesy, Trasa[0].wartosc, 2, 'v')
      else
      if przesy > 0 then
        Zamaluj(Trasa[Trunc(ruch_kulki)+1].X*45+przesx, Trasa[Trunc(ruch_kulki)+1].Y*45+przesy, Trasa[0].wartosc, 2, 'h')
      else
      if przesy < 0 then
        Zamaluj(Trasa[Trunc(ruch_kulki)+1].X*45+przesx, Trasa[Trunc(ruch_kulki)+1].Y*45+przesy-1, Trasa[0].wartosc, 2, 'h');
    end;
    ruch_kulki:=ruch_kulki+0.5;
  end else
  begin
    Gra.plansza[Trasa[High(Trasa)].X, Trasa[High(Trasa)].Y]:=Trasa[High(Trasa)].wartosc;
    Ruch.Enabled:=False;
    SetLength(sprawdz_od_pkt, 1);
    sprawdz_od_pkt[0].x:=Trasa[High(Trasa)].X;
    sprawdz_od_pkt[0].y:=Trasa[High(Trasa)].Y;
    sprawdz_od_pkt[0].wartosc:=Trasa[High(Trasa)].wartosc;
    SprawdzLinie;
    if not Gra.czy_usunal then
    begin
      Gra.ile_losuj:=3;
      SetLength(sprawdz_od_pkt, 3);
      ktora_kulka:=1;
      PokazNowe.Enabled:=True;
    end;
  end;
end;

procedure TForm1.SprawdzLinie;
var pola: TStringList;
    x, y, petla, punkt, odkad, licznik: Integer;
    temp: array[0..8] of TPole;
begin
  Gra.czy_usunal:=False;
  SetLength(usun_kulki, 1);
  odkad:=0;

  for punkt:=0 to High(sprawdz_od_pkt) do
  begin
    //poziom prawo
    licznik:=0;
    if sprawdz_od_pkt[punkt].x+1<9 then
    begin
      for petla:=sprawdz_od_pkt[punkt].x+1 to 8 do
      begin
        if Gra.plansza[petla, sprawdz_od_pkt[punkt].y]=sprawdz_od_pkt[punkt].wartosc then
        begin
          temp[licznik].x:=petla;
          temp[licznik].y:=sprawdz_od_pkt[punkt].y;
          temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
          Inc(licznik, 1);
        end else
          Break;
      end;
    end;
    //poziom lewo
    if sprawdz_od_pkt[punkt].x-1>-1 then
    begin
      for petla:=sprawdz_od_pkt[punkt].x-1 downto 0 do
      begin
        if Gra.plansza[petla, sprawdz_od_pkt[punkt].y]=sprawdz_od_pkt[punkt].wartosc then
        begin
          temp[licznik].x:=petla;
          temp[licznik].y:=sprawdz_od_pkt[punkt].y;
          temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
          Inc(licznik, 1);
        end else
          Break;
      end;
    end;
    if licznik>=4 then
    begin
      temp[licznik].x:=sprawdz_od_pkt[punkt].x;
      temp[licznik].y:=sprawdz_od_pkt[punkt].y;
      temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
      Inc(licznik, 1);
      SetLength(usun_kulki, High(usun_kulki)+licznik);
      y:=0;
      for x:=odkad to High(usun_kulki) do
      begin
        usun_kulki[x].x:=temp[y].x;
        usun_kulki[x].y:=temp[y].y;
        usun_kulki[x].wartosc:=temp[y].wartosc;
        Inc(y, 1);
      end;
      odkad:=High(usun_kulki)+1;
      Gra.czy_usunal:=True;
    end;
    //koniec poziom

    //pion gora
    licznik:=0;
    if sprawdz_od_pkt[punkt].y+1<9 then
    begin
      for petla:=sprawdz_od_pkt[punkt].y+1 to 8 do
      begin
        if Gra.plansza[sprawdz_od_pkt[punkt].x, petla]=sprawdz_od_pkt[punkt].wartosc then
        begin
          temp[licznik].x:=sprawdz_od_pkt[punkt].x;
          temp[licznik].y:=petla;
          temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
          Inc(licznik, 1);
        end else
          Break;
      end;
    end;
    //pion dol
    if sprawdz_od_pkt[punkt].y-1>-1 then
    begin
      for petla:=sprawdz_od_pkt[punkt].y-1 downto 0 do
      begin
        if Gra.plansza[sprawdz_od_pkt[punkt].x, petla]=sprawdz_od_pkt[punkt].wartosc then
        begin
          temp[licznik].x:=sprawdz_od_pkt[punkt].x;
          temp[licznik].y:=petla;
          temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
          Inc(licznik, 1);
        end else
          Break;
      end;
    end;
    if licznik>=4 then
    begin
      temp[licznik].x:=sprawdz_od_pkt[punkt].x;
      temp[licznik].y:=sprawdz_od_pkt[punkt].y;
      temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
      Inc(licznik, 1);
      SetLength(usun_kulki, High(usun_kulki)+licznik);
      y:=0;
      for x:=odkad to High(usun_kulki) do
      begin
        usun_kulki[x].x:=temp[y].x;
        usun_kulki[x].y:=temp[y].y;
        usun_kulki[x].wartosc:=temp[y].wartosc;
        Inc(y, 1);
      end;
      odkad:=High(usun_kulki)+1;
      Gra.czy_usunal:=True;
    end;
    //koniec pion

    //skos \ lewo
    licznik:=0;
    if (sprawdz_od_pkt[punkt].x-1>-1) and (sprawdz_od_pkt[punkt].y-1>-1) then
    begin
      x:=sprawdz_od_pkt[punkt].x-1;
      y:=sprawdz_od_pkt[punkt].y-1;
      while (x>-1) and (y>-1) do
      begin
        if Gra.plansza[x,y]=sprawdz_od_pkt[punkt].wartosc then
        begin
          temp[licznik].x:=x;
          temp[licznik].y:=y;
          temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
          Inc(licznik, 1);
          Dec(x, 1);
          Dec(y, 1);
        end else
        begin
          x:=-1;
          y:=-1
        end;
      end;
    end;
    //skos \ prawo
    if (sprawdz_od_pkt[punkt].x+1<9) and (sprawdz_od_pkt[punkt].y+1<9) then
    begin
      x:=sprawdz_od_pkt[punkt].x+1;
      y:=sprawdz_od_pkt[punkt].y+1;
      while (x<9) and (y<9) do
      begin
        if Gra.plansza[x,y]=sprawdz_od_pkt[punkt].wartosc then
        begin
          temp[licznik].x:=x;
          temp[licznik].y:=y;
          temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
          Inc(licznik, 1);
          Inc(x, 1);
          Inc(y, 1);
        end else
        begin
          x:=9;
          y:=9
        end;
      end;
    end;
    if licznik>=4 then
    begin
      temp[licznik].x:=sprawdz_od_pkt[punkt].x;
      temp[licznik].y:=sprawdz_od_pkt[punkt].y;
      temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
      Inc(licznik, 1);
      SetLength(usun_kulki, High(usun_kulki)+licznik);
      y:=0;
      for x:=odkad to High(usun_kulki) do
      begin
        usun_kulki[x].x:=temp[y].x;
        usun_kulki[x].y:=temp[y].y;
        usun_kulki[x].wartosc:=temp[y].wartosc;
        Inc(y, 1);
      end;
      odkad:=High(usun_kulki)+1;
      Gra.czy_usunal:=True;
    end;
    //koniec skos \

    //skos / lewo
    licznik:=0;
    if (sprawdz_od_pkt[punkt].x-1>-1) and (sprawdz_od_pkt[punkt].y+1<9) then
    begin
      x:=sprawdz_od_pkt[punkt].x-1;
      y:=sprawdz_od_pkt[punkt].y+1;
      while (x>-1) and (y<9) do
      begin
        if Gra.plansza[x,y]=sprawdz_od_pkt[punkt].wartosc then
        begin
          temp[licznik].x:=x;
          temp[licznik].y:=y;
          temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
          Inc(licznik, 1);
          Dec(x, 1);
          Inc(y, 1);
        end else
        begin
          x:=-1;
          y:=9;
        end;
      end;
    end;
    //skos / prawo
    if (sprawdz_od_pkt[punkt].x+1<9) and (sprawdz_od_pkt[punkt].y-1>-1) then
    begin
      x:=sprawdz_od_pkt[punkt].x+1;
      y:=sprawdz_od_pkt[punkt].y-1;
      while (x<9) and (y>-1) do
      begin
        if Gra.plansza[x,y]=sprawdz_od_pkt[punkt].wartosc then
        begin
          temp[licznik].x:=x;
          temp[licznik].y:=y;
          temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
          Inc(licznik, 1);
          Inc(x, 1);
          Dec(y, 1);
        end else
        begin
          x:=9;
          y:=-1;
        end;
      end;
    end;
    if licznik>=4 then
    begin
      temp[licznik].x:=sprawdz_od_pkt[punkt].x;
      temp[licznik].y:=sprawdz_od_pkt[punkt].y;
      temp[licznik].wartosc:=sprawdz_od_pkt[punkt].wartosc;
      Inc(licznik, 1);
      SetLength(usun_kulki, High(usun_kulki)+licznik);
      y:=0;
      for x:=odkad to High(usun_kulki) do
      begin
        usun_kulki[x].x:=temp[y].x;
        usun_kulki[x].y:=temp[y].y;
        usun_kulki[x].wartosc:=temp[y].wartosc;
        Inc(y, 1);
      end;
      odkad:=High(usun_kulki)+1;
      Gra.czy_usunal:=True;
    end;
    //koniec skos /
  end;

  if Gra.czy_usunal then
  begin
    GrajDzwiek('usun');
    usun:=2;
    UsunLinie.Enabled:=True;
  end;

  pola:=TStringList.Create;
  for x:=0 to 8 do
  begin
    for y:=0 to 8 do
    begin
      if Gra.plansza[x,y]=0 then
        pola.Add(IntToStr(x)+';'+IntToStr(y));
    end;
  end;
  if pola.Count=81 then
  begin
    Gra.ile_losuj:=3;
    ktora_kulka:=1;
    PokazNowe.Enabled:=True;
  end;
  if (pola.Count=0) then
    KoniecGry;
  pola.Free;
end;

procedure TForm1.PokazNastepneTimer(Sender: TObject);
begin
  if ktora_kulka<=3 then
  begin
    Zamaluj2(ktora_kulka);
    Inc(ktora_kulka, 1);
  end else
    PokazNastepne.Enabled:=False;
end;

procedure TForm1.Zamaluj3(x, y, kx, ky: Integer);
begin
  if (kx = 0) and (ky = 0) then
  begin
    if (x = 0) and (y = 0) then
      Plansza.Picture.Bitmap.Canvas.Draw(x*45, y*45, Pusty[2])
    else
    if (x = 8) and (y = 0) then
      Plansza.Picture.Bitmap.Canvas.Draw(x*45, y*45, Pusty[3])
    else
    if (x = 0) and (y = 8) then
      Plansza.Picture.Bitmap.Canvas.Draw(x*45, y*45, Pusty[4])
    else
    if (x = 8) and (y = 8) then
      Plansza.Picture.Bitmap.Canvas.Draw(x*45, y*45, Pusty[5])
    else
      Plansza.Picture.Bitmap.Canvas.Draw(x*45, y*45, Pusty[1]);
  end else
    Plansza.Picture.Bitmap.Canvas.Draw((x*45)+2, (y*45)+2, Kulki[kx,ky]);
end;

procedure TForm1.UsunLinieTimer(Sender: TObject);
var x: Integer;
begin
  if usun>0 then
  begin
    for x:=0 to High(usun_kulki) do
    begin
      Zamaluj3(usun_kulki[x].x, usun_kulki[x].y, usun_kulki[x].wartosc, usun);
    end;
  Dec(usun, 1);
  end else
  begin
    UsunLinie.Enabled:=False;
    for x:=0 to High(usun_kulki) do
    begin
      Zamaluj3(usun_kulki[x].x, usun_kulki[x].y, 0, 0);
      Gra.plansza[usun_kulki[x].x, usun_kulki[x].y]:=0;
    end;
    x:=0;
    case Gra.ile_kolorow of
      5: x:=(High(usun_kulki)+1);
      7: x:=(High(usun_kulki)+1)*2;
      9: x:=(High(usun_kulki)+1)*4;
    end;
    if Gra.pokazuj_nastepne_kolory then
      x:=x-Round(x/3);
    Inc(Gra.punkty, x);
    Label4.Caption:=IntToStr(Gra.punkty);
  end;
end;

procedure TForm1.KoniecGry;
begin
  Gra.koniec := True;
  Plansza.Enabled := False;
  Undo.czy_cofac := False;
  if gra.punkty > StrToInt(wyniki_arr[9,1]) then
  begin
      Gra.nowyrekord:=True;
      okno:=toNowyRekord;
      Pauza(True);
      PokazOkno;
  end else
  begin
    Pauza(True);
    okno:=toKoniecGry;
    PokazOkno;
  end;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  okno := toLoadGame;
  Pauza(True);
  PokazOkno;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  Pauza(True);
  okno:=toRekordy;
  PokazOkno;
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  Pauza(True);
  okno := toUstawienia;
  PokazOkno;
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
  GrajDzwiek('klik');
{  with IconNotifyData do
  begin
    hIcon:=Application.Icon.Handle;
    uCallbackMessage:=WM_USER+1;
    cbSize:=SizeOf(IconNotifyData);
    Wnd:=Handle;
    uID:=100;
    uFlags:=NIF_MESSAGE+NIF_ICON+NIF_TIP;
  end;}
//  StrPCopy(IconNotifyData.szTip, Application.Title);
//  Shell_NotifyIcon(NIM_ADD, @IconNotifyData);
  Pauza(True);
  Form1.Hide;
end;

procedure TForm1.Image8Click(Sender: TObject);
var ux, uy: Byte;
begin
  GrajDzwiek('klik');
  if((Undo.czy_cofac=true) and (PokazNowe.Enabled=False) and (Ruch.Enabled=False) and (PokazNastepne.Enabled=False) and (UsunLinie.Enabled=False)) then
  begin
    Podskoki.Enabled := False;
    Gra.punkty := Undo.punkty;
    Label4.Caption := IntToStr(Gra.punkty);
    for ux := 0 to 8 do
    begin
      for uy := 0 to 8 do
      begin
        Gra.plansza[ux,uy] := Undo.plansza[ux,uy];
        if Gra.plansza[ux,uy] = 0 then
          Zamaluj(ux*45, uy*45, 0, 0)
        else
          Zamaluj(ux*45, uy*45, Gra.plansza[ux,uy], 3);
      end;
      if(ux < 3) then
      begin
        Gra.nastepne_kolory[ux] := Undo.nastepne_kolory[ux];
      end;
    end;
    Zamaluj2(3);
    Undo.czy_cofac := False;
  end;
end;

procedure TForm1.Image9Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  Pauza(True);
  okno:=toInfo;
  PokazOkno;
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
  GrajDzwiek('klik');
{  if FileExists(ExtractFilePath(Application.ExeName)+'\help\'+ Gra.jezyk +'.htm') then
    ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'\help\'+ Gra.jezyk +'.htm'), '', '', sw_Normal)
  else
  if FileExists(ExtractFilePath(Application.ExeName)+'\help\english.htm') then
    ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName)+'\help\english.htm'), '', '', sw_Normal)
  else
  begin
    Pauza(True);
    okno := toHelp;
    PokazOkno;
  end;}
end;

procedure TForm1.Image12Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  Pauza(True);
  okno:=toWyjscie;
  PokazOkno;
end;

procedure TForm1.PokazOkno;
var x: Byte;
    tmp: string;
    sr: TSearchRec;
begin
  case okno of
    toNowaGra: begin
                 okno2ok.Picture.Bitmap.Assign(ButtonOK[0]);
                 okno2ok.Visible:=True;
                 okno2anuluj.Picture.Bitmap.Assign(ButtonCancel[0]);
                 okno2anuluj.Visible:=True;
                 okno2.Visible:=True;
                 okno2caption.Caption:= jezykText[13];
                 okno2caption.Visible:=True;
                 okno2tekst.Caption:=jezykText[14];
                 okno2tekst.Visible:=True;
               end;
    toRekordy: begin
                  ScoreList.Caption := '';
                  ScorePoints.Caption := '';
                  okno1.Visible:=True;
                  oknocaption.Caption:=jezykText[5];
                  oknocaption.Visible:=True;
                  ScoreOK.Picture.Bitmap.Assign(ButtonOK[0]);
                  ScoreOK.Visible:=True;
                  ScoreDelete.Picture.Bitmap.Assign(ButtonCancel[0]);
                  ScoreDelete.Visible:=True;
                  ScoreDelete.Hint := jezykText[15];
                  ScoreList.Visible:=true;
                  ScorePoints.Visible:=true;
                  for x:=0 to 9 do
                  begin
                    if x < 9 then tmp := '0' else tmp := '';
                    ScoreList.Caption := ScoreList.Caption + tmp + IntToStr(x+1) + '. ' + wyniki_arr[x,0];
                    ScorePoints.Caption := ScorePoints.Caption + wyniki_arr[x,1];
                    if x < 9 then
                    begin
                      ScoreList.Caption := ScoreList.Caption + #13#10;
                      ScorePoints.Caption := ScorePoints.Caption + #13#10;
                    end;
                  end;
            end;
    toKasujRekordy: begin
                      okno2ok.Picture.Bitmap.Assign(ButtonOK[0]);
                      okno2ok.Visible:=True;
                      okno2anuluj.Picture.Bitmap.Assign(ButtonCancel[0]);
                      okno2anuluj.Visible:=True;
                      okno2.Visible:=True;
                      okno2caption.Caption:=jezykText[13];
                      okno2caption.Visible:=True;
                      okno2tekst.Caption:=jezykText[16];
                      okno2tekst.Visible:=True;
                      ScoreDelete.Enabled:=False;
                      ScoreOK.Enabled:=False;
                    end;
    toNowyRekord: begin
                    NewScoreOK.Picture.Bitmap.Assign(ButtonOK[0]);
                    NewScoreOK.Visible:=True;
                    okno2.Visible:=True;
                    okno2caption.Caption:=jezykText[27];
                    okno2caption.Visible:=True;
                    NewScoreText.Caption:=jezykText[28];
                    NewScoreText.Visible:=True;
                    NewScoreEdit.Visible:=True;
                    NewScoreEdit.SetFocus;
                  end;
    toError: begin
                    NewScoreOK.Picture.Bitmap.Assign(ButtonOK[0]);
                    NewScoreOK.Visible:=True;
                    okno2.Visible:=True;
                    okno2caption.Caption:=jezykText[30];
                    okno2caption.Visible:=True;
                    okno2tekst.Caption:=jezykText[31];
                    okno2tekst.Visible:=True;
                    infook.Enabled := False;
                    OSUp.Enabled := False;
                    OSDown.Enabled := False;
                  end;
   toOverwrite: begin
              okno2anuluj.Picture.Bitmap.Assign(ButtonCancel[0]);
              okno2ok.Picture.Bitmap.Assign(ButtonOK[0]);
              okno2anuluj.Visible:=True;
              okno2ok.Visible:=True;
              okno2.Visible:=True;
              okno2caption.Caption:=jezykText[30];
              okno2caption.Visible:=True;
              okno2tekst.Caption:=jezykText[34];
              okno2tekst.Visible:=True;
              ScoreOk.Enabled := False;
              ScoreDelete.Enabled := False;
              SaveName.Visible := False;
              SaveAs.Visible := False;
              OSUp.Enabled := False;
              OSDown.Enabled := False;
            end;
    toHelp: begin
                    NewScoreOK.Picture.Bitmap.Assign(ButtonOK[0]);
                    NewScoreOK.Visible:=True;
                    okno2.Visible:=True;
                    okno2caption.Caption:=jezykText[30];
                    okno2caption.Visible:=True;
                    okno2tekst.Caption:=jezykText[32];
                    okno2tekst.Visible:=True;
                  end;
    toUstawienia: begin
                    okno1.Visible:=True;
                    oknocaption.Caption:=jezykText[17];
                    oknocaption.Visible:=True;
                    ScoreOK.Picture.Bitmap.Assign(ButtonOK[0]);
                    ScoreOK.Visible:=True;
                    ScoreDelete.Picture.Bitmap.Assign(ButtonCancel[0]);
                    ScoreDelete.Visible:=True;
                    Opt1.Caption:=jezykText[18];
                    Opt1.Visible:=True;
                    Opt2.Caption:=jezykText[19];
                    Opt2.Visible:=True;
                    Opt3.Caption:=jezykText[20];
                    Opt3.Visible:=True;
                    Opt4.Caption:=jezykText[21];
                    Opt4.Visible:=True;
                    if gra.dzwiek then
                    begin
                      Check1.Picture.Bitmap.Assign(Check[1]);
                      Opcje.dzwiek := True;
                    end else
                    begin
                      Check1.Picture.Bitmap.Assign(Check[0]);
                      Opcje.dzwiek := False;
                    end;
                    Check1.Visible:=true;
                    if gra.pokazuj_nastepne_kolory then
                    begin
                      Check2.Picture.Bitmap.Assign(Check[1]);
                      Opcje.pokazuj_nastepne_kolory := True;
                    end else
                    begin
                      Check2.Picture.Bitmap.Assign(Check[0]);
                      Opcje.pokazuj_nastepne_kolory := False;
                    end;
                    Check2.Visible:=true;
                    case gra.ile_kolorow of
                      5: begin
                          ilek1.Picture.Bitmap.Assign(Check[1]);
                          ilek2.Picture.Bitmap.Assign(Check[0]);
                          ilek3.Picture.Bitmap.Assign(Check[0]);
                          Opcje.ile_kolorow := 5;
                         end;
                      7: begin
                          ilek1.Picture.Bitmap.Assign(Check[0]);
                          ilek2.Picture.Bitmap.Assign(Check[1]);
                          ilek3.Picture.Bitmap.Assign(Check[0]);
                          Opcje.ile_kolorow := 7;
                         end;
                      9: begin
                          ilek1.Picture.Bitmap.Assign(Check[0]);
                          ilek2.Picture.Bitmap.Assign(Check[0]);
                          ilek3.Picture.Bitmap.Assign(Check[1]);
                          Opcje.ile_kolorow := 9;
                         end;
                    end;
                    ilek1.Visible:=true;
                    ilek2.Visible:=true;
                    ilek3.Visible:=true;
                    kolor5.Visible:=true;
                    kolor7.Visible:=true;
                    kolor9.Visible:=true;
                    if opcje.langindex = 0 then
                      langb.Picture.Bitmap.Assign(Arrows[3,3])
                    else
                      langb.Picture.Bitmap.Assign(Arrows[3,2]);
                    langb.Visible:=true;
                    if opcje.langindex = Length(jezyki_arr) - 1 then
                      langn.Picture.Bitmap.Assign(Arrows[4,3])
                    else
                      langn.Picture.Bitmap.Assign(Arrows[4,2]);
                    langn.Visible:=true;
                    Opcje.jezyk := gra.jezyk;
                    optlang.Caption:= gra.jezyk;
                    optlang.Visible:=true;
                  end;
    toInfo: begin
              okno1.Visible:=True;
              oknocaption.Caption:=jezykText[22];
              oknocaption.Visible:=True;
              infook.Picture.Bitmap.Assign(ButtonOK[0]);
              infook.Visible:=True;
              infoappname.Visible:=true;
              infocopy.Visible:=true;
              infokulka.Visible:=true;
              infomail.Visible:=true;
              infowww.Visible:=true;
              infotext.Caption:=jezykText[23]+#13#10#13#10+jezykText[24]+#13#10+jezykText[25];
              infotext.Visible:=True;
            end;
    toWyjscie: begin
                 okno2ok.Picture.Bitmap.Assign(ButtonOK[0]);
                 okno2ok.Visible:=True;
                 okno2anuluj.Picture.Bitmap.Assign(ButtonCancel[0]);
                 okno2anuluj.Visible:=True;
                 okno2.Visible:=True;
                 okno2caption.Caption:=jezykText[13];
                 okno2caption.Visible:=True;
                 okno2tekst.Caption:=jezykText[26];
                 okno2tekst.Visible:=True;
               end;
    toKoniecGry:  begin
                     okno2ok.Picture.Bitmap.Assign(ButtonOK[0]);
                     okno2ok.Visible:=True;
                     okno2anuluj.Picture.Bitmap.Assign(ButtonCancel[0]);
                     okno2anuluj.Visible:=True;
                     okno2.Visible:=True;
                     okno2caption.Caption:=jezykText[13];
                     okno2caption.Visible:=True;
                     okno2tekst.Caption:=jezykText[29];
                     okno2tekst.Visible:=True;
                  end;
    toLoadGame: begin
                  okno1.Visible:=True;
                  oknocaption.Caption:=jezykText[3] ;
                  oknocaption.Visible:=True;
                  infook.Picture.Bitmap.Assign(ButtonCancel[0]);
                  infook.Visible:=True;
                  if not DirectoryExists(ExtractFilePath(Application.ExeName)+'save') then
                    CreateDir(ExtractFilePath(Application.ExeName)+'save');
                  if FindFirst(ExtractFilePath(Application.ExeName)+'save\*.kex', faAnyFile, sr) = 0 then
                  begin
                    repeat
                      begin
                        if strpos(PChar(sr.Name), PChar('.kex')) <> nil then
                        begin
                          SetLength(OS_arr, Length(OS_arr)+1);
                          OS_arr[High(OS_arr)] := StringReplace(sr.Name, '.kex', '', [rfReplaceAll, rfIgnoreCase]);
                        end;
                      end;
                    until FindNext(sr) <> 0;
                    FindClose(sr);
                  end;
                  OSUp.Picture.Bitmap.Assign(Arrows[2,3]);
                  OSUp.Visible:=True;
                  OSUp.Tag := 1;
                  OSDown.Tag := 9;
                  if Length(OS_arr) > 9 then
                    OSDown.Picture.Bitmap.Assign(Arrows[1,2])
                  else
                    OSDown.Picture.Bitmap.Assign(Arrows[1,3]);
                  OSDown.Top := OS9.Top;
                  OSDown.Visible:=True;
                  for x := 1 to 9 do
                  begin
                    TLabel(FindComponent('OS'+IntToStr(x))).Visible := True;
                    if (x) <= Length(OS_arr) then
                      TLabel(FindComponent('OS'+IntToStr(x))).Caption := OS_arr[x-1]
                    else
                      TLabel(FindComponent('OS'+IntToStr(x))).Caption := '';
                  end;
                end;
    toSaveGame: begin
                  okno1.Visible:=True;
                  oknocaption.Caption:=jezykText[4];
                  oknocaption.Visible:=True;
                  ScoreOK.Picture.Bitmap.Assign(ButtonOK[0]);
                  ScoreDelete.Picture.Bitmap.Assign(ButtonCancel[0]);
                  ScoreOK.Visible:=True;
                  ScoreDelete.Visible:=True;
                  SaveAs.Caption := jezykText[33];
                  SaveAs.Visible := True;
                  SaveName.Visible := True;
                  SaveName.SetFocus;
                  if not DirectoryExists(ExtractFilePath(Application.ExeName)+'save') then
                    CreateDir(ExtractFilePath(Application.ExeName)+'save');
                  if FindFirst(ExtractFilePath(Application.ExeName)+'save\*.kex', faAnyFile, sr) = 0 then
                  begin
                    repeat
                      begin
                        if strpos(PChar(sr.Name), PChar('.kex')) <> nil then
                        begin
                          SetLength(OS_arr, Length(OS_arr)+1);
                          OS_arr[High(OS_arr)] := StringReplace(sr.Name, '.kex', '', [rfReplaceAll, rfIgnoreCase]);
                        end;
                      end;
                    until FindNext(sr) <> 0;
                    FindClose(sr);
                  end;
                  OSUp.Picture.Bitmap.Assign(Arrows[2,3]);
                  OSUp.Visible:=True;
                  OSUp.Tag := 1;
                  OSDown.Tag := 8;
                  if Length(OS_arr) > 8 then
                    OSDown.Picture.Bitmap.Assign(Arrows[1,2])
                  else
                    OSDown.Picture.Bitmap.Assign(Arrows[1,3]);
                  OSDown.Top := OS8.Top;
                  OSDown.Visible:=True;
                  for x := 1 to 8 do
                  begin
                    TLabel(FindComponent('OS'+IntToStr(x))).Visible := True;
                    if (x) <= Length(OS_arr) then
                      TLabel(FindComponent('OS'+IntToStr(x))).Caption := OS_arr[x-1]
                    else
                      TLabel(FindComponent('OS'+IntToStr(x))).Caption := '';
                  end;
                end;
  end;
end;

procedure TForm1.Pauza(p: Boolean);
var x: Byte;
    war: Boolean;
begin
  if p then
  begin
    pauza_tab[1]:=PokazNowe.Enabled;
    pauza_tab[2]:=Podskoki.Enabled;
    pauza_tab[3]:=Ruch.Enabled;
    pauza_tab[4]:=UsunLinie.Enabled;
    pauza_tab[5]:=PokazNastepne.Enabled;
    PokazNowe.Enabled:=False;
    Podskoki.Enabled:=False;
    Ruch.Enabled:=False;
    UsunLinie.Enabled:=False;
    PokazNastepne.Enabled:=False;
    for x:=2 to 12 do
      TImage(FindComponent('Image'+IntToStr(x))).Enabled:=False;
    Plansza.Enabled:=False;
  end else
  begin
    if gra.koniec=false then
    begin
      PokazNowe.Enabled:=pauza_tab[1];
      Podskoki.Enabled:=pauza_tab[2];
      Ruch.Enabled:=pauza_tab[3];
      UsunLinie.Enabled:=pauza_tab[4];
      PokazNastepne.Enabled:=pauza_tab[5];
      war := CzyGraAktywna;
      if war then
        Plansza.Enabled:=True;
    end;
    for x:=2 to 12 do
      TImage(FindComponent('Image'+IntToStr(x))).Enabled:=True;
  end;
end;

procedure TForm1.okno2okMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  okno2ok.Picture.Bitmap.Assign(ButtonOK[2]);
end;

procedure TForm1.okno2okMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  okno2ok.Picture.Bitmap.Assign(ButtonOK[1]);
end;

procedure TForm1.okno2anulujMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  okno2anuluj.Picture.Bitmap.Assign(ButtonCancel[2]);
end;

procedure TForm1.okno2anulujMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  okno2anuluj.Picture.Bitmap.Assign(ButtonCancel[1]);
end;

procedure TForm1.Okno2P1klik;
begin
  okno2ok.Visible:=False;
  okno2anuluj.Visible:=False;
  okno2.Visible:=False;
  okno2caption.Visible:=False;
  okno2tekst.Visible:=False;
end;

procedure TForm1.okno2anulujClick(Sender: TObject);
var x: Byte;
begin
  GrajDzwiek('klik');
  case okno of
    toNowaGra: begin
                 Okno2P1klik;
                 Pauza(False);
               end;
    toWyjscie: begin
                 Okno2P1klik;
                 Pauza(False);
               end;
    toKasujRekordy: begin
                      Okno2P1klik;
                      ScoreDelete.Enabled:=True;
                      ScoreOK.Enabled:=True;
                      okno:=toRekordy;
                    end;
    toKoniecGry: begin
                    Okno2P1klik;
                    for x:=2 to 12 do
                      TImage(FindComponent('Image'+IntToStr(x))).Enabled:=True;
                 end;
    toOverwrite: begin
                   okno := toSaveGame;
                   okno2anuluj.Visible:=False;
                   okno2ok.Visible:=False;
                   okno2.Visible:=False;
                   okno2caption.Visible:=False;
                   okno2tekst.Visible:=False;
                   ScoreOk.Enabled := True;
                   ScoreDelete.Enabled := True;
                   SaveName.Visible := True;
                   SaveAs.Visible := True;
                   OSUp.Enabled := True;
                   OSDown.Enabled := True;
                 end;
  end;
end;

procedure TForm1.okno2okClick(Sender: TObject);
var x, y: Byte;
    tmp: string;
begin
  GrajDzwiek('klik');
  case okno of
    toNowaGra: begin
                 Okno2P1klik;
                 NowaGra;
               end;
    toWyjscie: begin
                 ZapiszWyniki;
                 Check[0].FreeImage;
                 Check[1].FreeImage;
                 for x := 0 to 2 do
                 begin
                  ButtonOK[x].FreeImage;
                  ButtonCancel[x].FreeImage;
                 end;
                 for x := 1 to 9 do
                 begin
                  for y := 1 to 5 do
                  begin
                     Kulki[x,y].FreeImage;
                  end;
                 end;
                 for x := 1 to 4 do
                 begin
                  for y := 1 to 3 do
                  begin
                     Arrows[x,y].FreeImage;
                  end;
                 end;
                 for x := 1 to 11 do
                 begin
                  for y := 1 to 3 do
                  begin
                     MenuButton[x,y].FreeImage;
                  end;
                 end;
                 Hintbmp.FreeImage;
                 Application.Terminate;
               end;
    toKasujRekordy: begin
                      KasujWyniki;
                      ZapiszWyniki;
                      ScoreList.Caption := '';
                      ScorePoints.Caption := '';
                      for x:=0 to 9 do
                      begin
                        if x < 9 then tmp := '0' else tmp := '';
                        ScoreList.Caption := ScoreList.Caption + tmp + IntToStr(x+1) + '. ' + wyniki_arr[x,0];
                        ScorePoints.Caption := ScorePoints.Caption + wyniki_arr[x,1];
                        if x < 9 then
                        begin
                          ScoreList.Caption := ScoreList.Caption + #13#10;
                          ScorePoints.Caption := ScorePoints.Caption + #13#10;
                        end;
                      end;
                      Okno2P1klik;
                      ScoreDelete.Enabled:=True;
                      ScoreOK.Enabled:=True;
                      okno:=toRekordy;
                    end;
      toKoniecGry: begin
                     Okno2P1klik;
                     for x:=2 to 12 do
                        TImage(FindComponent('Image'+IntToStr(x))).Enabled:=True;
                     NowaGra;
                   end;
      toOverwrite: begin
                     okno2anuluj.Visible:=False;
                     okno2ok.Visible:=False;
                     okno2.Visible:=False;
                     okno2caption.Visible:=False;
                     okno2tekst.Visible:=False;
                     ScoreOk.Enabled := True;
                     ScoreDelete.Enabled := True;
                     SaveName.Visible := True;
                     SaveAs.Visible := True;
                     OSUp.Enabled := True;
                     OSDown.Enabled := True;
//                     ZapiszGre(SaveName.Text);
                     UkryjZapisz;
                 end;
  end;
end;

procedure TForm1.InfoClose;
begin
  okno1.Visible:=False;
  oknocaption.Visible:=False;
  infook.Visible:=False;
  infotext.Visible:=False;
  infoappname.Visible:=False;
  infocopy.Visible:=False;
  infokulka.Visible:=False;
  infomail.Visible:=False;
  infowww.Visible:=False;
end;

procedure TForm1.infookClick(Sender: TObject);
var x: Byte;
begin
   GrajDzwiek('klik');
  if okno = toInfo then
  begin
    InfoClose;
    Pauza(False);
  end else
  begin
    okno1.Visible:=False;
    oknocaption.Visible:=False;
    infook.Visible:=False;
    OSUp.Visible:=False;
    OSDown.Visible:=False;
    for x := 1 to 9 do
      TLabel(FindComponent('OS'+IntToStr(x))).Visible := False;
    SetLength(OS_arr, 0);
    Pauza(False);
  end;
end;

procedure TForm1.infookMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if okno = toInfo then
    infook.Picture.Bitmap.Assign(ButtonOK[2])
  else
    infook.Picture.Bitmap.Assign(ButtonCancel[2]);
end;

procedure TForm1.infookMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if okno = toInfo then
    infook.Picture.Bitmap.Assign(ButtonOK[1])
  else
    infook.Picture.Bitmap.Assign(ButtonCancel[1]);
end;

procedure TForm1.InfoMailClick(Sender: TObject);
begin
//  ShellExecute(Handle, 'open','mailto:pinio@icpnet.pl', '', '', sw_Normal);
end;

procedure TForm1.InfowwwClick(Sender: TObject);
begin
//  ShellExecute(Handle, 'open', 'http://www.pinio.user.icpnet.pl', '', '', sw_Normal);
end;

procedure TForm1.ScoreOKClick(Sender: TObject);
var Ustawienia: TINIFile;
    gra_ile_kolorow: Byte;
begin
  GrajDzwiek('klik');
  case okno of
    toRekordy: begin
                 okno1.Visible:=False;
                 oknocaption.Visible:=False;
                 ScoreOK.Visible:=False;
                 ScoreDelete.Visible:=False;
                 ScoreList.Visible:=False;
                 ScorePoints.Visible:=False;
                 ScoreDelete.Hint := '';
                 if Gra.nowyrekord = True then
                 begin
                   Gra.nowyrekord := False;
                   okno := toKoniecGry;
                   PokazOkno;
                 end else
                   Pauza(False);
              end;
    toUstawienia: begin
                    ustawienia:=TINIFile.Create(ExtractFilePath(Application.ExeName)+'settings.ini');
                    ustawienia.WriteInteger('SETTINGS', 'colors', Opcje.ile_kolorow);
                    ustawienia.WriteBool('SETTINGS', 'next_colors', Opcje.pokazuj_nastepne_kolory);
                    ustawienia.WriteBool('SETTINGS', 'SOUND', Opcje.dzwiek);
                    ustawienia.WriteString('SETTINGS', 'language', Opcje.jezyk);
                    gra_ile_kolorow := gra.ile_kolorow;
                    Gra.pokazuj_nastepne_kolory := Opcje.pokazuj_nastepne_kolory;
                    if opcje.pokazuj_nastepne_kolory then
                    begin
                      if CzyGraAktywna then
                        Zamaluj2(3);
                    end else
                    begin
                      if CzyGraAktywna then
                       NoNextShow;
                    end;
                    Gra.ile_kolorow := Opcje.ile_kolorow;
                    Gra.dzwiek := Opcje.dzwiek;
                    Gra.jezyk := Opcje.jezyk;
                    ZmienJezyk;
                    ustawienia.Free;
                    UkryjUstawienia;
                    if (gra_ile_kolorow <> opcje.ile_kolorow) and (CzyGraAktywna = True)then
                      NowaGra;
                  end;
    toSaveGame: begin
                  if not FileExists(ExtractFilePath(Application.ExeName)+'save\'+SaveName.Text+'.kex') then
                  begin
//                    ZapiszGre(SaveName.Text);
                    UkryjZapisz;
                  end else
                  begin
                    okno := toOverwrite;
                    PokazOkno;
                  end;
                end;
  end;
end;

procedure TForm1.ScoreDeleteMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ScoreDelete.Picture.Bitmap.Assign(ButtonCancel[2]);
end;

procedure TForm1.ScoreOKMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ScoreOK.Picture.Bitmap.Assign(ButtonOK[2]);
end;

procedure TForm1.ScoreDeleteMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ScoreDelete.Picture.Bitmap.Assign(ButtonCancel[1]);
end;

procedure TForm1.ScoreOKMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ScoreOK.Picture.Bitmap.Assign(ButtonOK[1]);
end;

procedure TForm1.WczytajWyniki;
var s: TStringList;
    x: Byte;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'wyniki.dat') then
  begin
     s:=TStringList.Create;
    s.LoadFromFile(ExtractFilePath(Application.ExeName)+'wyniki.dat');
    s.Text:=StringXor(s.Text, 183);
    for x:=0 to 9 do
    begin
      s.Strings[x]:=trim(s.Strings[x]);
      wyniki_arr[x,0]:=Copy(s.Strings[x], 1, Pos(';', s.Strings[x])-1);
      wyniki_arr[x,1]:=Copy(s.Strings[x], Pos(';', s.Strings[x])+1, Length(s.Strings[x])-Pos(';', s.Strings[x]));
    end;
    s.Free;
  end else
  begin
    KasujWyniki;
    ZapiszWyniki;
  end
end;

procedure TForm1.ZapiszWyniki;
var s: TStringList;
    x: Byte;
begin
  s:=TStringList.Create;
  for x:=0 to 9 do
    s.Add(wyniki_arr[x,0]+';'+wyniki_arr[x,1]);
  s.Text:=StringXOR(s.Text, 183);
  s.SaveToFile(ExtractFilePath(Application.ExeName)+'wyniki.dat');
  s.Free;
end;

procedure TForm1.KasujWyniki;
var x: byte;
begin
   for x:=0 to 9 do
    begin
      wyniki_arr[x,0]:='Piniol';
      wyniki_arr[x,1]:= IntToStr(100 - (x * 10));
    end;
    ZapiszWyniki;
end;

procedure TForm1.ScoreDeleteClick(Sender: TObject);
begin
  GrajDzwiek('klik');
  case okno of
    toRekordy: begin
                okno:=toKasujRekordy;
                PokazOkno;
               end;
    toUstawienia: begin
                    UkryjUstawienia;
                  end;
    toSaveGame: begin
                  UkryjZapisz;
                end;
  end;
end;

procedure TForm1.GrajDzwiek(s: PAnsiChar);
begin
{  if Gra.dzwiek then
  try
    PlaySound(s, HInstance, SND_ASYNC+SND_NOWAIT+SND_RESOURCE);
  except
  end;}
end;

procedure TForm1.NewScoreOKMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
NewScoreOK.Picture.Bitmap.Assign(ButtonOK[2]);
end;

procedure TForm1.NewScoreOKMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
NewScoreOK.Picture.Bitmap.Assign(ButtonOK[1]);
end;

procedure TForm1.NewScoreOKClick(Sender: TObject);
var i, z, idx: Byte;
begin
  GrajDzwiek('klik');
  if okno = toHelp then
  begin
    NewScoreOK.Visible:=False;
    okno2.Visible:=False;
    okno2caption.Visible:=False;
    okno2tekst.Visible:=False;
    Pauza(False);
  end else
  if okno = toError then
  begin
    NewScoreOK.Visible:=False;
    okno2.Visible:=False;
    okno2caption.Visible:=False;
    okno2tekst.Visible:=False;
    infook.Enabled := True;
    OSUp.Enabled := True;
    OSDown.Enabled := True;
    okno := toLoadGame;
  end else
  begin
    idx := 0;
    for i:=0 to 9 do
    begin
      if Gra.punkty >= StrToInt(wyniki_arr[i,1]) then
      begin
        idx := i;
        break;
      end;
    end;
    for z:=9 downto idx do
    begin
      wyniki_arr[z,0] := wyniki_arr[z-1,0];
      wyniki_arr[z,1] := wyniki_arr[z-1,1];
    end;
    wyniki_arr[idx,0] := NewScoreEdit.Text;
    wyniki_arr[idx,1] := IntToStr(Gra.punkty);
    ZapiszWyniki;
    NewScoreOK.Visible:=False;
    okno2.Visible:=False;
    okno2caption.Visible:=False;
    NewScoreText.Visible:=False;
    NewScoreEdit.Visible:=False;
    okno := toRekordy;
    PokazOkno;
  end;
end;

procedure TForm1.Check1Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  if opcje.dzwiek = true then
  begin
    Check1.Picture.Bitmap.Assign(Check[0]);
    opcje.dzwiek := False;
  end else
  begin
    Check1.Picture.Bitmap.Assign(Check[1]);
    opcje.dzwiek := True;
  end;
end;

procedure TForm1.Check2Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  if opcje.pokazuj_nastepne_kolory = true then
  begin
    Check2.Picture.Bitmap.Assign(Check[0]);
    opcje.pokazuj_nastepne_kolory := False;
  end else
  begin
    Check2.Picture.Bitmap.Assign(Check[1]);
    opcje.pokazuj_nastepne_kolory := True;
  end;
end;

procedure TForm1.Ilek1Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  if opcje.ile_kolorow <> 5 then
  begin
    ilek1.Picture.Bitmap.Assign(Check[1]);
    ilek2.Picture.Bitmap.Assign(Check[0]);
    ilek3.Picture.Bitmap.Assign(Check[0]);
    opcje.ile_kolorow := 5;
  end
end;

procedure TForm1.ilek2Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  if opcje.ile_kolorow <> 7 then
  begin
    ilek1.Picture.Bitmap.Assign(Check[0]);
    ilek2.Picture.Bitmap.Assign(Check[1]);
    ilek3.Picture.Bitmap.Assign(Check[0]);
    opcje.ile_kolorow := 7;
  end
end;

procedure TForm1.Ilek3Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  if opcje.ile_kolorow <> 9 then
  begin
    ilek1.Picture.Bitmap.Assign(Check[0]);
    ilek2.Picture.Bitmap.Assign(Check[0]);
    ilek3.Picture.Bitmap.Assign(Check[1]);
    opcje.ile_kolorow := 9;
  end
end;

procedure TForm1.UkryjUstawienia;
begin
  okno1.Visible:=False;
  oknocaption.Visible:=False;
  ScoreOK.Visible:=False;
  ScoreDelete.Visible:=False;
  Opt1.Visible:=False;
  Opt2.Visible:=False;
  Opt3.Visible:=False;
  Opt4.Visible:=False;
  Check1.Visible:=False;
  Check2.Visible:=False;
  ilek1.Visible:=False;
  ilek2.Visible:=False;
  ilek3.Visible:=False;
  kolor5.Visible:=False;
  kolor7.Visible:=False;
  kolor9.Visible:=False;
  langb.Visible:=False;
  langn.Visible:=False;
  optlang.Visible:=False;
  Pauza(False);
end;

procedure TForm1.ZmienJezyk;
var lang: TStringList;
    x: Byte;
begin
  if FileExists(ExtractFilePath(Application.ExeName) + 'lang\'+ Gra.jezyk +'.txt') then
  begin
    lang := TStringList.Create;
    lang.LoadFromFile(ExtractFilePath(Application.ExeName) + 'lang\'+ Gra.jezyk +'.txt');
    SetLength(jezykText, lang.Count);
    for x:= 0 to Length(jezykText) - 1 do
    begin
      jezykText[x] := lang.Strings[x];
    end;
    lang.Free;
  end else
  begin
    SetLength(jezykText, 32);
    jezykText[0] := 'Score';
    jezykText[1] := 'Next Colors';
    jezykText[2] := 'New Game';
    jezykText[3] := 'Load Game';
    jezykText[4] := 'Save Game';
    jezykText[5] := 'Highscores';
    jezykText[6] := 'Game Options';
    jezykText[7] := 'Hide Game';
    jezykText[8] := 'Undo';
    jezykText[9] := 'About the Game';
    jezykText[10] := 'Help';
    jezykText[11] := 'Minimize';
    jezykText[12] := 'Close';
    jezykText[13] := 'Confirmation';
    jezykText[14] := 'Do you want to quit actual game?';
    jezykText[15] := 'Delete Highscores';
    jezykText[16] := 'Do you want to delete highscores?';
    jezykText[17] := 'Options';
    jezykText[18] := 'Play sounds';
    jezykText[19] := 'Show next colors';
    jezykText[20] := 'Number of colors';
    jezykText[21] := 'Language';
    jezykText[22] := 'About';
    jezykText[23] := 'Program written in Delphi 7 Personal.';
    jezykText[24] := 'Program is distributed as Freeware.';
    jezykText[25] := 'Autor nie bierze odpowiedzialności za ewentualne szkody powstałe w skutek jego działania.';
    jezykText[26] := 'Close game KulkiEx?';
    jezykText[27] := 'New Highscore!';
    jezykText[28] := 'Enter your name:';
    jezykText[29] := 'Game over. Do you want to play again?';
    jezykText[30] := 'Error';
    jezykText[31] := 'This is not KulkiEx savegame file!';
    jezykText[32] := 'Help file not found!';
    jezykText[33] := 'Save as:';
    jezykText[34] := 'File already exist. Do you want to replace it?';
  end;
  Label2.Caption := jezykText[0];
  Label3.Caption := jezykText[1];
  for x:=2 to 12 do
    TImage(FindComponent('Image'+IntToStr(x))).Hint := jezykText[x];
end;

procedure TForm1.LabelColor(Sender: TObject; Msg: Integer);
begin
  if Sender is TLabel then
  begin
{    if (Msg=CM_MOUSELEAVE) then
      (Sender as TLabel).Font.Color := clBlue
    else
    if (Msg=CM_MOUSEENTER) then
      (Sender as TLabel).Font.Color := clGreen;}
  end;
end;

procedure TForm1.OSColor(Sender: TObject; Msg: Integer);
begin
  if (Sender is TLabel) and ((Sender as TLabel).Caption <> '') and (okno2.Visible = False) then
  begin
{    if (Msg=CM_MOUSELEAVE) then
    begin
      (Sender as TLabel).Color := clSilver;
      (Sender as TLabel).Font.Color := clBlack;
      (Sender as TLabel).Font.Style := [];
    end;

    if (Msg=CM_MOUSEENTER) then
    begin
      (Sender as TLabel).Color := $00A6D1A3;
      (Sender as TLabel).Font.Color := clBlue;
      (Sender as TLabel).Font.Style := [fsItalic];
    end;}
  end;
end;

procedure TForm1.NoNextShow;
var x: Integer;
begin
  for x:=0 to 2 do
  begin
    Nastepne.Picture.Bitmap.Canvas.Draw(x*45, 0, NoNext);
  end;
end;

procedure TForm1.langbMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if opcje.langindex > 0 then
    langb.Picture.Bitmap.Assign(Arrows[3,1]);
end;

procedure TForm1.langbMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Opcje.langindex > 0 then
  begin
    GrajDzwiek('klik');
    Opcje.langindex := Opcje.langindex - 1;
    optlang.Caption := jezyki_arr[Opcje.langindex];
    Opcje.jezyk := optlang.Caption;
  end;

  if Opcje.langindex = 0 then
    langb.Picture.Bitmap.Assign(Arrows[3,3]);
  if Length(jezyki_arr) > 1 then
    langn.Picture.Bitmap.Assign(Arrows[4,2]);
    
  if opcje.langindex > 0 then
    langb.Picture.Bitmap.Assign(Arrows[3,2]);
end;

procedure TForm1.langnMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Opcje.langindex < Length(jezyki_arr)-1 then
  begin
    GrajDzwiek('klik');
    Opcje.langindex := Opcje.langindex + 1;
    optlang.Caption := jezyki_arr[Opcje.langindex];
    Opcje.jezyk := optlang.Caption;
  end;

  if Opcje.langindex = Length(jezyki_arr)-1 then
    langn.Picture.Bitmap.Assign(Arrows[4,3]);
  if Length(jezyki_arr) > 0 then
    langb.Picture.Bitmap.Assign(Arrows[3,2]);

  if opcje.langindex < Length(jezyki_arr) - 1 then
    langn.Picture.Bitmap.Assign(Arrows[4,2]);
end;

procedure TForm1.langnMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if opcje.langindex < Length(jezyki_arr) - 1 then
    langn.Picture.Bitmap.Assign(Arrows[4,1]);
end;

procedure TForm1.SaveLoad(Sender: TObject);
begin
  if (Sender as TLabel).Caption <> '' then
  begin
    (Sender as TLabel).Color := clSilver;
    (Sender as TLabel).Font.Color := clBlack;
    (Sender as TLabel).Font.Style := [];
  end;
  if okno = toLoadGame then
  begin
//    if (Sender as TLabel).Caption <> '' then
  //    WczytajGre((Sender as TLabel).Caption);
  end else
  if okno = toSaveGame then
  begin
    if (Sender as TLabel).Caption <> '' then
    begin
      (Sender as TLabel).Color := clSilver;
      okno := toOverwrite;
      PokazOkno;
    end;
  end;
end;

{procedure TForm1.WczytajGre(name: string);
var s: TStringList;
    x, y: Integer;
    temp: string;
begin
  if not DirectoryExists(ExtractFilePath(Application.ExeName)+'save') then
    CreateDir(ExtractFilePath(Application.ExeName)+'save');

  if FileExists(ExtractFilePath(Application.ExeName)+'save\'+name+'.kex') then
  begin
    s:=TStringList.Create;
    s.LoadFromFile(ExtractFilePath(Application.ExeName)+'save\'+name+'.kex');
    s.Text:=StringXOR(s.Text, 183);
    if (Length(trim(s.Text)) = 0) or (s.Strings[0] <> 'KulkiEx') then
    begin
      s.Free;
      okno := toError;
      PokazOkno;
    end else
    begin
      okno1.Visible:=False;
      oknocaption.Visible:=False;
      infook.Visible:=False;
      OSUp.Visible:=False;
      OSDown.Visible:=False;
      for x := 1 to 9 do
        TLabel(FindComponent('OS'+IntToStr(x))).Visible := False;
      SetLength(OS_arr, 0);
      WyczyscPlansze;
      for x:=2 to 12 do
        TImage(FindComponent('Image'+IntToStr(x))).Enabled:=True;
      Plansza.Enabled:=True;
      pktA.X:=-1;
      pktA.Y:=-1;
      pktB.X:=-1;
      pktB.Y:=-1;
      Gra.ile_losuj:=3;
      SetLength(sprawdz_od_pkt, 3);
      Gra.czy_usunal:=False;
      ktora_kulka:=1;
      for y:=0 to 8 do
      begin
        temp:=s.Strings[y+1];
        for x:=0 to 8 do
        begin
          Gra.plansza[x,y]:=StrToInt(temp[x+1]);
          if Gra.plansza[x,y]>0 then
            Zamaluj(x*45, y*45, StrToInt(temp[x+1]), 3);
        end;
      end;
      Gra.punkty:=StrToInt(s.Strings[10]);
      Label4.Caption:=IntToStr(Gra.punkty);
      for x:=0 to 2 do
      begin
        Gra.nastepne_kolory[x]:=StrToInt(s.Strings[x+11]);
        Nastepne.Canvas.Draw(x*45, 0, Kulki[StrToInt(s.Strings[x+11]), 3]);
      end;
      if s.Strings[15]='True' then
      begin
        Gra.pokazuj_nastepne_kolory:=True;
      end else
      begin
        Gra.pokazuj_nastepne_kolory:=False;
        NoNextShow;
      end;
      Gra.ile_kolorow:=StrToInt(s.Strings[14]);
    end;
  end;
end;}

procedure TForm1.OSUpMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if OSUp.Tag > 1 then
    OSUp.Picture.Bitmap.Assign(Arrows[2,1]);
end;

procedure TForm1.OSUpMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var y1, x1, count: Byte;
    osl: Integer;
begin
  if okno = toLoadGame then
    y1 := 9
  else
    y1 := 8;

  osl := Length(OS_arr);
  if (osl > y1) and (OSUp.Tag > 1) then
  begin
    OSUp.Tag := OSUp.Tag - 1;
    OSDown.Tag := OSDown.Tag - 1;
    count := 1;
    for x1 := (OSUp.Tag - 1) to (OSDown.Tag - 1) do
    begin
      TLabel(FindComponent('OS'+IntToStr(count))).Caption := OS_arr[x1];
      count := count + 1;
    end;
    OSDown.Picture.Bitmap.Assign(Arrows[1,2]);
    if OSUp.Tag = 1 then
      OSUp.Picture.Bitmap.Assign(Arrows[2,3]);
  end;
  if OSUp.Tag > 1 then
    OSUp.Picture.Bitmap.Assign(Arrows[2,2]);
end;

procedure TForm1.OSDownMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if OSDown.Tag < Length(OS_arr) then
    OSDown.Picture.Bitmap.Assign(Arrows[1,1]);
end;

procedure TForm1.OSDownMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var y1, x1, count: Byte;
    osl: Integer;
begin
  if okno = toLoadGame then
    y1 := 9
  else
    y1 := 8;

  osl := Length(OS_arr);
  if (osl > y1) and (OSDown.Tag < osl) then
  begin
    if OSUp.Tag = 1 then
      OSUp.Picture.Bitmap.Assign(Arrows[2,2]);
    OSUp.Tag := OSUp.Tag + 1;
    OSDown.Tag := OSDown.Tag + 1;
    count := 1;
    for x1 := (OSUp.Tag - 1) to (OSDown.Tag - 1) do
    begin
      TLabel(FindComponent('OS'+IntToStr(count))).Caption := OS_arr[x1];
      count := count + 1;
    end;
    if OSDown.Tag = osl then
      OSDown.Picture.Bitmap.Assign(Arrows[1,3]);
  end;
  if OSDown.Tag < Length(OS_arr) then
    OSDown.Picture.Bitmap.Assign(Arrows[1,2]);
end;

{procedure TForm1.ZapiszGre(name: String);
var s: TStringList;
    x, y: Integer;
    temp: string;
    war: Boolean;
begin
  war:= CzyGraAktywna;
  if war then
  begin
    if not DirectoryExists(ExtractFilePath(Application.ExeName)+'save') then
      CreateDir(ExtractFilePath(Application.ExeName)+'save');
    s:=TStringList.Create;
    s.Add('KulkiEx');
    for y:=0 to 8 do
    begin
      temp:='';
      for x:=0 to 8 do
      begin
        temp:=temp+IntToStr(Gra.plansza[x,y]);
      end;
      s.Add(temp);
    end;
    s.Add(IntToStr(Gra.punkty));
    for x:=0 to 2 do
      s.Add(IntToStr(Gra.nastepne_kolory[x]));
    s.Add(IntToStr(Gra.ile_kolorow));
    if Gra.pokazuj_nastepne_kolory then
      s.Add('True')
    else
      s.Add('False');
    s.Text:=StringXOR(s.Text, 183);
    s.SaveToFile(ExtractFilePath(Application.ExeName)+'save\'+name+'.kex');
    s.Free;
  end;
end;}

procedure TForm1.Image4Click(Sender: TObject);
begin
  GrajDzwiek('klik');
  if CzyGraAktywna then
  begin
    okno := toSaveGame;
    Pauza(True);
    PokazOkno;
  end;
end;

procedure TForm1.SaveOSClick(Sender: TObject);
begin
  if okno = toSaveGame then
  begin
    if (Sender as TLabel).Caption <> '' then
    begin
      SaveName.Text := (Sender as TLabel).Caption;
      SaveName.SetFocus;
    end;
  end;
end;

procedure TForm1.UkryjZapisz;
var x: Byte;
begin
  okno1.Visible:=False;
  oknocaption.Visible:=False;
  ScoreOK.Visible:=False;
  ScoreDelete.Visible:=False;
  SaveAs.Visible := False;
  SaveName.Visible := False;
  OSUp.Visible:=False;
  OSDown.Visible:=False;
  for x := 1 to 8 do
    TLabel(FindComponent('OS'+IntToStr(x))).Visible := False;
  SetLength(OS_arr, 0);
  Pauza(False);
end;

initialization
  {$i Unit1.lrs}
  {$i Unit1.lrs}
  {$i Unit1.lrs}
  {$i Unit1.lrs}

end.
