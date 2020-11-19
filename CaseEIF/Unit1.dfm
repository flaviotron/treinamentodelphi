object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Case e IF'
  ClientHeight = 321
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 280
    Top = 87
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object edtEntrada: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'N'
  end
  object btnCase: TButton
    Left = 8
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Case'
    TabOrder = 1
    OnClick = btnCaseClick
  end
  object edtSaida: TEdit
    Left = 8
    Top = 66
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'N'
  end
  object btnIF: TButton
    Left = 89
    Top = 35
    Width = 75
    Height = 25
    Caption = 'IF'
    TabOrder = 3
    OnClick = btnIFClick
  end
  object lsbSaida: TListBox
    Left = 0
    Top = 101
    Width = 418
    Height = 220
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 4
    ExplicitLeft = 8
    ExplicitTop = 93
    ExplicitWidth = 121
  end
  object lsbEntrada: TListBox
    Left = 280
    Top = 8
    Width = 121
    Height = 73
    ItemHeight = 13
    Items.Strings = (
      'N'
      'F'
      'D'
      'A'
      'R')
    TabOrder = 5
  end
  object ckeComInstancia: TCheckBox
    Left = 184
    Top = 12
    Width = 97
    Height = 17
    Caption = 'Com Instancia'
    TabOrder = 6
  end
  object btnRobotizado: TButton
    Left = 170
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Robotizado'
    TabOrder = 7
    OnClick = btnRobotizadoClick
  end
  object UmaThread: TButton
    Left = 170
    Top = 66
    Width = 75
    Height = 25
    Caption = '1 Thread'
    TabOrder = 8
    OnClick = UmaThreadClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 344
    Top = 16
  end
end
