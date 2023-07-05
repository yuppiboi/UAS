object Form6: TForm6
  Left = 250
  Top = 179
  Width = 1122
  Height = 549
  Caption = 'tb_riwayat_poin'
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
    Left = 16
    Top = 8
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object Label2: TLabel
    Left = 16
    Top = 32
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 25
    Height = 13
    Caption = 'Kelas'
  end
  object Label4: TLabel
    Left = 16
    Top = 80
    Width = 50
    Height = 13
    Caption = 'Nama Wali'
  end
  object Label5: TLabel
    Left = 16
    Top = 104
    Width = 50
    Height = 13
    Caption = 'Nama Poin'
  end
  object Label6: TLabel
    Left = 16
    Top = 176
    Width = 38
    Height = 13
    Caption = 'Tanggal'
  end
  object Label7: TLabel
    Left = 16
    Top = 200
    Width = 45
    Height = 13
    Caption = 'Semester'
  end
  object Label8: TLabel
    Left = 16
    Top = 224
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label9: TLabel
    Left = 16
    Top = 128
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object Label10: TLabel
    Left = 16
    Top = 152
    Width = 28
    Height = 13
    Caption = 'Bobot'
  end
  object Button1: TButton
    Left = 16
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 3
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 296
    Width = 401
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Edit1: TEdit
    Left = 96
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 96
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 96
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 96
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object cmb1: TComboBox
    Left = 96
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
  end
  object cmb2: TComboBox
    Left = 96
    Top = 56
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 10
  end
  object cmb3: TComboBox
    Left = 96
    Top = 128
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 11
  end
  object cmb5: TComboBox
    Left = 96
    Top = 200
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 12
  end
  object cmb6: TComboBox
    Left = 96
    Top = 224
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 13
  end
  object DBGrid2: TDBGrid
    Left = 248
    Top = 32
    Width = 320
    Height = 120
    DataSource = DataSource2
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object DBGrid3: TDBGrid
    Left = 656
    Top = 32
    Width = 320
    Height = 120
    DataSource = DataSource3
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object dtp: TDateTimePicker
    Left = 96
    Top = 176
    Width = 186
    Height = 21
    Date = 45111.682364351850000000
    Time = 45111.682364351850000000
    TabOrder = 16
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
    Left = 16
    Top = 424
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_riwayatpoin')
    Params = <>
    Left = 72
    Top = 424
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 128
    Top = 424
  end
  object ZConnection2: TZConnection
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
    Left = 280
    Top = 168
  end
  object ZQuery2: TZQuery
    Connection = ZConnection2
    Active = True
    SQL.Strings = (
      'select * from tb_siswa')
    Params = <>
    Left = 336
    Top = 168
  end
  object DataSource2: TDataSource
    DataSet = ZQuery2
    Left = 392
    Top = 168
  end
  object ZConnection3: TZConnection
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
    Left = 656
    Top = 168
  end
  object ZQuery3: TZQuery
    Connection = ZConnection3
    Active = True
    SQL.Strings = (
      'select * from tb_poin')
    Params = <>
    Left = 712
    Top = 168
  end
  object DataSource3: TDataSource
    DataSet = ZQuery3
    Left = 760
    Top = 168
  end
end
