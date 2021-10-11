object Form1: TForm1
  Left = 229
  Top = 137
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1086#1080#1089#1082' '#1089#1080#1084#1074#1086#1083#1072
  ClientHeight = 144
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 161
    Top = 5
    Width = 9
    Height = 16
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Courier'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 149
    Height = 16
    Caption = #1053#1072#1095#1077#1088#1090#1072#1085#1080#1077' '#1089#1080#1084#1074#1086#1083#1072':'
  end
  object Label3: TLabel
    Left = 8
    Top = 69
    Width = 58
    Height = 16
    Caption = #1064#1088#1080#1092#1090' :'
  end
  object Label4: TLabel
    Left = 64
    Top = 69
    Width = 3
    Height = 16
  end
  object Label5: TLabel
    Left = 8
    Top = 27
    Width = 63
    Height = 16
    Caption = #1050#1083#1072#1074#1080#1096#1072':'
  end
  object Label6: TLabel
    Left = 8
    Top = 46
    Width = 67
    Height = 16
    Caption = #1057#1082#1086#1088#1086#1089#1090#1100':'
  end
  object Label7: TLabel
    Left = 80
    Top = 26
    Width = 3
    Height = 16
  end
  object Label8: TLabel
    Left = 8
    Top = 92
    Width = 42
    Height = 16
    Caption = #1053#1072#1073#1086#1088
  end
  object Button1: TButton
    Left = 8
    Top = 119
    Width = 65
    Height = 21
    Hint = #1042#1099#1073#1086#1088' '#1096#1088#1080#1092#1090#1072
    Caption = #1064#1088#1080#1092#1090
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 200
    Top = 119
    Width = 65
    Height = 21
    Hint = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
    Caption = #1042#1099#1093#1086#1076
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = Button2Click
  end
  object UpDown1: TUpDown
    Left = 232
    Top = 2
    Width = 33
    Height = 23
    Associate = Edit1
    Max = 255
    Orientation = udHorizontal
    Position = 230
    TabOrder = 2
    OnClick = UpDown1Click
    OnExit = UpDown1Exit
  end
  object Edit1: TEdit
    Left = 192
    Top = 2
    Width = 37
    Height = 23
    AutoSize = False
    TabOrder = 3
    Text = '230'
    OnKeyPress = Edit1KeyPress
  end
  object Button3: TButton
    Left = 104
    Top = 119
    Width = 65
    Height = 21
    Hint = #1040#1074#1090#1086#1087#1086#1080#1089#1082'/'#1087#1072#1091#1079#1072
    Caption = #1040#1074#1090#1086
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Button3Click
  end
  object UpDown2: TUpDown
    Left = 108
    Top = 46
    Width = 29
    Height = 18
    Associate = Edit2
    Min = 1
    Orientation = udHorizontal
    Position = 1
    TabOrder = 5
    OnClick = UpDown2Click
  end
  object Edit2: TEdit
    Left = 80
    Top = 46
    Width = 28
    Height = 18
    AutoSize = False
    ReadOnly = True
    TabOrder = 6
    Text = '1'
  end
  object ComboBox1: TComboBox
    Left = 56
    Top = 88
    Width = 177
    Height = 25
    Style = csDropDownList
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 17
    ParentFont = False
    TabOrder = 7
    OnChange = ComboBox1Change
  end
  object StaticText1: TStaticText
    Left = 240
    Top = 88
    Width = 25
    Height = 25
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    TabOrder = 8
  end
  object Button4: TButton
    Left = 168
    Top = 30
    Width = 97
    Height = 22
    Hint = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1085#1072' '#1082#1083#1072#1074#1080#1072#1090#1091#1088#1077' '#1080' '#1074#1089#1077' '#1089#1080#1084#1074#1086#1083#1099
    Caption = #1050#1083#1072#1074#1080#1072#1090#1091#1088#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -10
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = Button4Click
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 152
    Top = 61
  end
end
