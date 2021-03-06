unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, lclintf;

type

  { TForm3 }

  TForm3 = class(TForm)
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;

var verbs:array[1..20] of String;
var correct, incorrect, dice, attempts: Integer;



implementation
uses unit1;

{$R *.lfm}

{ TForm3 }

function rand() : Integer;
begin
 result := random(20)+1;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin
  //correct button
 attempts := 5;
 correct := correct + 1;
 Randomize();
 dice := rand();
 Label1.Caption := verbs[dice];
 Label12.Caption := IntToStr(attempts);
end;

procedure TForm3.Image10Click(Sender: TObject);
begin
  //button menu
  correct := 0;
  incorrect := 0;
  Panel3.Visible := FALSE;
  Form1.Show;
  Form3.Hide;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin

end;

procedure TForm3.Image11Click(Sender: TObject);
begin
  //button quit
  Application.terminate;
end;

procedure TForm3.Image12Click(Sender: TObject);
begin
  Form3.Hide();
  Form1.Show();
end;

procedure TForm3.Image13Click(Sender: TObject);
begin
    verbs[1] := 'eat';
    verbs[2] := 'sleep';
    verbs[3] := 'snack';
    verbs[4] := 'wake up';
    verbs[5] := 'shower';
    verbs[6] := 'text';
    verbs[7] := 'read [the news]';
    verbs[8] := 'watch tv';
    verbs[9] := 'catch [a bus]';
    verbs[10] := 'shower';
    verbs[11] := 'brush';
    verbs[12] := 'wash';
    verbs[13] := 'weigh';
    verbs[14] := 'check the time';
    verbs[15] := 'weigh';
    verbs[16] := 'dress';
    verbs[17] := 'undress';
    verbs[18] := 'hurry';
    verbs[19] := 'drive';
    verbs[20] := 'arrive';
    Panel2.Visible := FALSE;
    Panel1.Visible := TRUE;
end;

procedure TForm3.Image14Click(Sender: TObject);
begin
  verbs[1] := 'run';
  verbs[2] := 'jump';
  verbs[3] := 'walk';
  verbs[4] := 'dance';
  verbs[5] := 'play';
  verbs[6] := 'game';
  verbs[7] := 'punch';
  verbs[8] := 'hit';
  verbs[9] := 'kick';
  verbs[10] := 'defend';
  verbs[11] := 'dive';
  verbs[12] := 'swim';
  verbs[13] := 'race';
  verbs[14] := 'ride a bicycle';
  verbs[15] := 'throw';
  verbs[16] := 'smash';
  verbs[17] := 'shoot';
  verbs[18] := 'win';
  verbs[19] := 'loose';
  verbs[20] := 'trip [on sth]';
  Panel2.Visible := FALSE;
  Panel1.Visible := TRUE;
end;

procedure TForm3.Image15Click(Sender: TObject);
begin
  verbs[1] := 'paint';
  verbs[2] := 'sculpt';
  verbs[3] := 'play [instr.]';
  verbs[4] := 'write';
  verbs[5] := 'sign';
  verbs[6] := 'dance';
  verbs[7] := 'rock out';
  verbs[8] := 'draw';
  verbs[9] := 'imagine';
  verbs[10] := 'envision';
  verbs[11] := 'decorate';
  verbs[12] := 'admire';
  verbs[13] := 'record';
  verbs[14] := 'photograph';
  verbs[15] := 'film';
  verbs[16] := 'brainstorm';
  verbs[17] := 'conceve';
  verbs[18] := 'brush';
  verbs[19] := 'exhibit';
  verbs[20] := 'ilustrate';
  Panel2.Visible := FALSE;
  Panel1.Visible := TRUE;
end;

procedure TForm3.Image17Click(Sender: TObject);
begin
  //hide/show verb button
  if Label1.Visible = TRUE then Label1.Visible := FALSE
  else Label1.Visible := TRUE;
end;

procedure TForm3.Image18Click(Sender: TObject);
begin
  // tweet button
  if (correct > incorrect) then
  OpenURL('https://twitter.com/home?status=I%20just%20won%20a%20match%20of%20%23Percolate%20!!!!111one')
  else if (incorrect > correct) then
  OpenURL('https://twitter.com/home?status=I%20just%20lost%20a%20match%20of%20%23Percolate%20%23theBourgeoisieWinsThisTime')
  else
   OpenURL('https://twitter.com/home?status=I%20just%20tied%20a%20match%20of%20%23Percolate%20%23thestatusquoremains');
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
  //incorrect button
  attempts := attempts - 1;

 if attempts = 0 then
    begin
    incorrect := incorrect + 1;
    Randomize();
    dice := rand();
    Label1.Caption := verbs[dice];
    attempts := 5;
    end;
  Label12.Caption := IntToStr(attempts);
end;

procedure TForm3.Image3Click(Sender: TObject);
begin
  verbs[1] := 'respawn';
  verbs[2] := 'flame';
  verbs[3] := 'noobtube';
  verbs[4] := 'frag';
  verbs[5] := 'camp';
  verbs[6] := 'grief';
  verbs[7] := 'rage';
  verbs[8] := 'win';
  verbs[9] := 'lose';
  verbs[10] := 'score';
  verbs[11] := 'level up';
  verbs[12] := 'promote';
  verbs[13] := 'demote';
  verbs[14] := 'stream';
  verbs[15] := 'heal';
  verbs[16] := 'wreck';
  verbs[17] := 'shrek';
  verbs[18] := 'noscope';
  verbs[19] := 'betray';
  verbs[20] := 'battle';
  Panel2.Visible := FALSE;
  Panel1.Visible := TRUE;
end;

procedure TForm3.Image4Click(Sender: TObject);
begin
  // done button
  panel2.visible := TRUE;
  panel3.visible := TRUE;
  label9.caption := IntToStr(correct);
  label10.caption := IntToStr(incorrect);
  If (correct = 0) AND (incorrect = 0) then
     Label6.caption := 'You didn''t even try!'
  Else If (correct > incorrect) then
     Label6.caption := 'you won'
  Else If (incorrect > correct) then
     Label6.caption := 'you lost'
  Else If (correct = incorrect) then
     Label6.Caption := 'it''s a tie';
end;

procedure TForm3.Image7Click(Sender: TObject);
begin
  verbs[1] := 'upload';
  verbs[2] := 'download';
  verbs[3] := 'compile';
  verbs[4] := 'input';
  verbs[5] := 'program';
  verbs[6] := 'develop';
  verbs[7] := 'code';
  verbs[8] := 'design';
  verbs[9] := 'build';
  verbs[10] := 'install';
  verbs[11] := 'click';
  verbs[12] := 'type';
  verbs[13] := 'insert';
  verbs[14] := 'drag';
  verbs[15] := 'format';
  verbs[16] := 'delete';
  verbs[17] := 'browse';
  verbs[18] := 'log on';
  verbs[19] := 'log out';
  verbs[20] := 'reboot';
  Panel2.Visible := FALSE;
  Panel1.Visible := TRUE;
end;

procedure TForm3.Image8Click(Sender: TObject);
begin
  // button repeat
  correct := 0;
  incorrect := 0;
  Panel3.Visible := FALSE;
  Panel2.Visible := FALSE;
  Panel1.Visible := TRUE;
end;

procedure TForm3.Image9Click(Sender: TObject);
begin
  // button switch
  correct := 0;
  incorrect := 0;
  Panel3.Visible := FALSE;
  Panel2.Visible := TRUE;
end;

procedure TForm3.Label11Click(Sender: TObject);
begin

end;

procedure TForm3.Label12Click(Sender: TObject);
begin

end;

procedure TForm3.Label3Click(Sender: TObject);
begin
  Panel1.Visible := FALSE;
  Randomize;
  dice := rand();
  Label1.Caption := verbs[dice];
  correct := 0;
  incorrect := 0;
  attempts := 5;
  Label6.Caption := IntToStr(attempts);
end;

procedure TForm3.Label4Click(Sender: TObject);
begin
  Panel1.Visible := FALSE;
  Randomize;
  dice := rand();
  Label1.Caption := verbs[dice];
  correct := 0;
  incorrect := 0;
  attempts := 5;
  Label6.Caption := IntToStr(attempts);
end;

procedure TForm3.Label6Click(Sender: TObject);
begin

end;

procedure TForm3.Label8Click(Sender: TObject);
begin

end;

procedure TForm3.Panel1Click(Sender: TObject);
begin
  // begin panel
  Panel1.Visible := FALSE;
  Randomize;
  dice := rand();
  Label1.Caption := verbs[dice];
  correct := 0;
  incorrect := 0;
  attempts := 5;
  Label6.Caption := IntToStr(attempts);
end;

procedure TForm3.Panel3Click(Sender: TObject);
begin

end;

end.

