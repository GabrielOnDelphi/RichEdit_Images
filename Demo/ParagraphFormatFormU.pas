{******************************************************************

                       JEDI-VCL Demo

 Copyright (C) 2002 Project JEDI

 Original author:

 Contributor(s):

 You may retrieve the latest version of this file at the JEDI-JVCL
 home page, located at http://jvcl.delphi-jedi.org

 The contents of this file are used with permission, subject to
 the Mozilla Public License Version 1.1 (the "License"); you may
 not use this file except in compliance with the License. You may
 obtain a copy of the License at
 http://www.mozilla.org/MPL/MPL-1_1Final.html

 Software distributed under the License is distributed on an
 "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
 implied. See the License for the specific language governing
 rights and limitations under the License.

******************************************************************}

unit ParagraphFormatFormU;

interface

uses
  Forms, ExtCtrls, StdCtrls, Mask, Controls, Classes,
  JvRichEdit, Vcl.Samples.Spin;

type
  TParagraphFormatForm = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    IndentBox: TGroupBox;
    LeftIndent: TSpinEdit;
    Label1: TLabel;
    RightIndent: TSpinEdit;
    Label2: TLabel;
    FirstIndent: TSpinEdit;
    Label3: TLabel;
    Alignment: TRadioGroup;
    SpacingBox: TGroupBox;
    Label4: TLabel;
    SpaceBefore: TSpinEdit;
    Label5: TLabel;
    SpaceAfter: TSpinEdit;
    Label6: TLabel;
    LineSpacing: TSpinEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure SetAttr(Paragraph: TJvParaAttributes);
    procedure GetAttr(Paragraph: TJvParaAttributes);
  public
    { Public declarations }
  end;

function FormatParagraph(Paragraph: TJvParaAttributes): Boolean;

implementation

{$R *.DFM}

function FormatParagraph(Paragraph: TJvParaAttributes): Boolean;
begin
  with TParagraphFormatForm.Create(Application) do
  try
    SetAttr(Paragraph);
    Result := ShowModal = mrOk;
    if Result then
      GetAttr(Paragraph);
  finally
    Free;
  end;
end;

procedure TParagraphFormatForm.FormCreate(Sender: TObject);
begin
  SpacingBox.Enabled := (RichEditVersion >= 2);
end;

procedure TParagraphFormatForm.GetAttr(Paragraph: TJvParaAttributes);
begin
  Paragraph.LeftIndent := LeftIndent.Value;
  Paragraph.RightIndent := RightIndent.Value;
  Paragraph.FirstIndent := FirstIndent.Value;
  Paragraph.Alignment := TParaAlignment(Alignment.ItemIndex);
  Paragraph.SpaceBefore := SpaceBefore.Value;
  Paragraph.SpaceAfter := SpaceAfter.Value;
  if LineSpacing.Value > 0 then
    Paragraph.LineSpacingRule := lsSpecifiedOrMore
  else
    Paragraph.LineSpacingRule := lsSingle;
  Paragraph.LineSpacing := LineSpacing.Value;
end;

procedure TParagraphFormatForm.SetAttr(Paragraph: TJvParaAttributes);
begin
  LeftIndent.Value := Paragraph.LeftIndent;
  RightIndent.Value := Paragraph.RightIndent;
  FirstIndent.Value := Paragraph.FirstIndent;
  Alignment.ItemIndex := Ord(Paragraph.Alignment);
  SpaceBefore.Value := Paragraph.SpaceBefore;
  SpaceAfter.Value := Paragraph.SpaceAfter;
  LineSpacing.Value := Paragraph.LineSpacing;
end;

end.
