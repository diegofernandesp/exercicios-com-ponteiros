object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 299
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 846
    Height = 21
    ButtonHeight = 21
    ButtonWidth = 42
    Caption = 'ToolBar1'
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      AlignWithMargins = True
      Left = 0
      Top = 0
      Caption = ' Iniciar '
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
  end
  object memoLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 30
    Width = 846
    Height = 266
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 152
    ExplicitTop = 96
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
