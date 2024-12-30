program JediRtfEditorDemo;

{$R 'EditorDemo.res' 'EditorDemo.rc'}

uses
  Forms,
  MainForm in 'MainForm.pas' {EditorMainForm},
  ParagraphFormatFormU in 'ParagraphFormatFormU.pas' {ParagraphFormatForm},
  TabsFormU in 'TabsFormU.pas' {TabsForm};

begin
  Application.Initialize;
  Application.Title := 'RX RichEdit Demo';
  Application.CreateForm(TEditorMainForm, EditorMainForm);
  Application.Run;
end.
