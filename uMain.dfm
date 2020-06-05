object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 356
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mmDados: TMemo
    Left = 128
    Top = 8
    Width = 305
    Height = 297
    TabOrder = 0
  end
  object btnCommand: TButton
    Left = 24
    Top = 187
    Width = 75
    Height = 25
    Caption = 'Command'
    TabOrder = 1
    OnClick = btnCommandClick
  end
  object btnFactory: TButton
    Left = 24
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Factory'
    TabOrder = 2
    OnClick = btnFactoryClick
  end
  object Button1: TButton
    Left = 24
    Top = 63
    Width = 75
    Height = 25
    Caption = 'Abs. Factory'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 94
    Width = 75
    Height = 25
    Caption = 'Singleton'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 125
    Width = 75
    Height = 25
    Caption = 'Facade'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 156
    Width = 75
    Height = 25
    Caption = 'Prototype'
    TabOrder = 6
    OnClick = Button4Click
  end
end
