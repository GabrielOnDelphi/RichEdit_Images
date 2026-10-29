program MessengerDemo;

uses
  Forms,
  {$IFDEF AUTOPILOT}Autopilot.Bridge.Vcl in 'c:\Projects\Projects AI\Autopilot for Delphi\Source\Bridge\Autopilot.Bridge.Vcl.pas',{$ENDIF}{Optional}
  MessengerMainFormU in 'MessengerMainFormU.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMessengerMainForm, MessengerMainForm);

  { Optional: Via Autopilot, Claude can run/debug/test this program for you.
    For example, type text into edtNewText, press "Send" & check that it appears in JvRichEdit1.
    Don't have AUTOPILOT? Undefine $AUTOPILOT or get it from www.GabrielMoraru.com }
  {$IFDEF AUTOPILOT}
   Autopilot.Bridge.Vcl.StartBridge;
  {$ENDIF}
  Application.Run;
end.
