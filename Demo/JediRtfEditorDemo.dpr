program JediRtfEditorDemo;

{$R 'EditorDemo.res' 'EditorDemo.rc'}

uses
  Forms,
  MainForm in 'MainForm.pas' {EditorMainForm},
  {$IFDEF AUTOPILOT}Autopilot.Bridge.Vcl in 'c:\Projects\Projects AI\Autopilot for Delphi\Source\Bridge\Autopilot.Bridge.Vcl.pas',{$ENDIF}{Optional}
  ParagraphFormatFormU in 'ParagraphFormatFormU.pas' {ParagraphFormatForm},
  TabsFormU in 'TabsFormU.pas' {TabsForm};

begin
  Application.Initialize;
  Application.Title := 'RX RichEdit Demo';
  Application.CreateForm(TEditorMainForm, EditorMainForm);

  { Optional: Via Autopilot, Claude can run/debug/test this program for you.
    For example, type text into Editor, press "Center" & check with a screenshot that the paragraph is centered.
    Don't have AUTOPILOT? Undefine $AUTOPILOT or get it from www.GabrielMoraru.com }
  {$IFDEF AUTOPILOT}
   Autopilot.Bridge.Vcl.StartBridge;
  {$ENDIF}
  Application.Run;
end.
