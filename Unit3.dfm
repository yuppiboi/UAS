object Form3: TForm3
  Left = 185
  Top = 190
  Width = 1214
  Height = 488
  Caption = 'tb_hubungan'
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
    Left = 24
    Top = 32
    Width = 41
    Height = 13
    Caption = 'Siswa ID'
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 36
    Height = 13
    Caption = 'Ortu ID'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 45
    Height = 13
    Caption = 'Status ID'
  end
  object Label4: TLabel
    Left = 24
    Top = 128
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object Edit1: TEdit
    Left = 112
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 1
  end
  object cmb1: TComboBox
    Left = 112
    Top = 96
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'Ayah'
      'Ibu')
  end
  object cmb2: TComboBox
    Left = 112
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Kandung'
      'Wali')
  end
  object Button1: TButton
    Left = 24
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
  end
  object Button4: TButton
    Left = 280
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 232
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
  object DBGrid2: TDBGrid
    Left = 376
    Top = 232
    Width = 320
    Height = 120
    DataSource = DataSource2
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
  end
  object DBGrid3: TDBGrid
    Left = 728
    Top = 232
    Width = 320
    Height = 120
    DataSource = DataSource3
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
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
    Left = 392
    Top = 32
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_hubungan')
    Params = <>
    Left = 392
    Top = 88
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_siswa')
    Params = <>
    Left = 472
    Top = 88
  end
  object ZQuery3: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_ortu')
    Params = <>
    Left = 544
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 392
    Top = 144
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 472
    Top = 144
  end
  object DataSource3: TDataSource
    DataSet = ZQuery3
    Left = 544
    Top = 144
  end
end
