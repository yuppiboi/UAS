object Form8: TForm8
  Left = 336
  Top = 175
  Width = 519
  Height = 472
  Caption = 'tb_walikelas'
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
    Left = 32
    Top = 16
    Width = 17
    Height = 13
    Caption = 'NIP'
  end
  object Label2: TLabel
    Left = 32
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 32
    Top = 64
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label4: TLabel
    Left = 32
    Top = 88
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label5: TLabel
    Left = 32
    Top = 112
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object Label6: TLabel
    Left = 32
    Top = 136
    Width = 32
    Height = 13
    Caption = 'Matpel'
  end
  object Label7: TLabel
    Left = 32
    Top = 160
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label8: TLabel
    Left = 32
    Top = 184
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Edit1: TEdit
    Left = 136
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 136
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 136
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 136
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 136
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object cmb1: TComboBox
    Left = 136
    Top = 64
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'L'
      'P')
  end
  object Button1: TButton
    Left = 32
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 296
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 10
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 248
    Width = 425
    Height = 161
    DataSource = DataSource1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object cmb2: TComboBox
    Left = 136
    Top = 184
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
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
    Left = 296
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_walikelas')
    Params = <>
    Left = 352
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 400
    Top = 8
  end
end
