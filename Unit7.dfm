object Form7: TForm7
  Left = 197
  Top = 225
  Width = 464
  Height = 345
  Caption = 'tb_user'
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
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 25
    Height = 13
    Caption = 'Level'
  end
  object Label4: TLabel
    Left = 8
    Top = 80
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Edit1: TEdit
    Left = 80
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 80
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 80
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 80
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 8
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 184
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 272
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 7
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 152
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_poinsiswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Kuliah\2110010412_visual\UAS\libmysql.dll'
    Left = 256
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_user')
    Params = <>
    Left = 312
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 360
    Top = 8
  end
end
