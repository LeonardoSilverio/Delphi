object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Conversor'
  ClientHeight = 300
  ClientWidth = 546
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 35
    Width = 190
    Height = 23
    Caption = 'Quantidade em Dollar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 384
    Top = 35
    Width = 93
    Height = 23
    Caption = 'Convers'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 179
    Width = 56
    Height = 23
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 208
    Top = 279
    Width = 122
    Height = 13
    Caption = 'Leonardo Silv'#233'rio '#169' 2021'
  end
  object DOLLAR: TEdit
    Left = 16
    Top = 64
    Width = 201
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object CONVERTER: TButton
    Left = 256
    Top = 64
    Width = 97
    Height = 31
    Cursor = crHandPoint
    Caption = 'Converter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Microsoft YaHei'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = CONVERTERClick
  end
  object REAL: TEdit
    Left = 384
    Top = 64
    Width = 144
    Height = 31
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object COMPRA: TButton
    Left = 407
    Top = 210
    Width = 97
    Height = 31
    Cursor = crHandPoint
    Caption = 'Comprar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = COMPRAClick
  end
  object NOME: TEdit
    Left = 16
    Top = 215
    Width = 290
    Height = 21
    TabOrder = 4
    OnChange = NOMEChange
  end
  object REALR: TRadioButton
    Left = 256
    Top = 101
    Width = 97
    Height = 17
    Cursor = crHandPoint
    Caption = 'REAL'
    Checked = True
    TabOrder = 5
    TabStop = True
    OnClick = REALRClick
  end
  object EUROR: TRadioButton
    Left = 256
    Top = 124
    Width = 97
    Height = 17
    Cursor = crHandPoint
    Caption = 'EURO'
    TabOrder = 6
    OnClick = EURORClick
  end
  object LIMPAR: TButton
    Left = 72
    Top = 101
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 7
    OnClick = LIMPARClick
  end
end
