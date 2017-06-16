object FConexao: TFConexao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Conex'#227'o Talk Telecom 3.0'
  ClientHeight = 199
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Lb_Ramal: TLabel
    Left = 8
    Top = 62
    Width = 29
    Height = 13
    Caption = 'Ramal'
  end
  object Lb_ID: TLabel
    Left = 8
    Top = 36
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Lb_Senha: TLabel
    Left = 8
    Top = 86
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Lb_IP: TLabel
    Left = 8
    Top = 112
    Width = 10
    Height = 13
    Caption = 'IP'
  end
  object Lb_Porta: TLabel
    Left = 8
    Top = 139
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object Lb_Status: TLabel
    Left = 8
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Btn_Logar: TButton
    Left = 70
    Top = 164
    Width = 75
    Height = 25
    Caption = 'Logar'
    TabOrder = 0
    OnClick = Btn_LogarClick
  end
  object Edt_Ramal: TEdit
    Left = 70
    Top = 59
    Width = 40
    Height = 21
    TabOrder = 1
    Text = '2007'
  end
  object Edt_ID: TEdit
    Left = 70
    Top = 33
    Width = 40
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object Edt_Senha: TEdit
    Left = 70
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'TalkTelecom$@2017'
  end
  object Edt_IP: TEdit
    Left = 70
    Top = 109
    Width = 187
    Height = 21
    TabOrder = 4
    Text = '177.38.216.72'
  end
  object Edt_Porta: TEdit
    Left = 70
    Top = 136
    Width = 40
    Height = 21
    TabOrder = 5
    Text = '44900'
  end
  object Btn_BuscarIntervalos: TButton
    Left = 280
    Top = 59
    Width = 102
    Height = 21
    Caption = 'Buscar Intervalos'
    TabOrder = 6
    OnClick = Btn_BuscarIntervalosClick
  end
  object Cb_Intervalos: TComboBox
    Left = 280
    Top = 33
    Width = 273
    Height = 21
    TabOrder = 7
  end
  object Btn_NaoDisponivel: TButton
    Left = 280
    Top = 83
    Width = 102
    Height = 21
    Caption = 'N'#227'o Disponivel'
    TabOrder = 8
    OnClick = Btn_NaoDisponivelClick
  end
  object Btn_LiberarPausa: TButton
    Left = 280
    Top = 109
    Width = 102
    Height = 21
    Caption = 'Libera Pausa'
    TabOrder = 9
    OnClick = Btn_LiberarPausaClick
  end
  object Btn_Deslogar: TButton
    Left = 151
    Top = 164
    Width = 75
    Height = 25
    Caption = 'Deslogar'
    TabOrder = 10
    OnClick = Btn_DeslogarClick
  end
  object TalkManager_Button1: TTalkManager_Button
    Left = 280
    Top = 152
    Width = 71
    Height = 36
    TabOrder = 11
    ControlData = {
      93B200002C010000030008000BF25747200000005F0065007800740065006E00
      7400780057070000030008000AF25747200000005F0065007800740065006E00
      74007900B903000003000900267525BE240000006200610063006B0063006F00
      6C006F0072000F00008000000D00040075F30DBC3C00000066006F006E007400
      0352E30B918FCE119DE300AA004BB851010000009001444201000D4D53205361
      6E732053657269660D000700B67A22D234000000700069006300740075007200
      65000452E30B918FCE119DE300AA004BB8516C74000000000000000003000900
      38D7F7F22400000061006C00690067006E006D0065006E007400000000000000
      08000700AD1A15A308FFFFFF630061007000740069006F006E00070000004100
      74005F0043006F006D006D00}
  end
end
