object Form2: TForm2
  Left = 315
  Top = 252
  Width = 397
  Height = 445
  Caption = 'tb_kelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 24
    Height = 13
    Caption = 'Jenis'
  end
  object Label4: TLabel
    Left = 24
    Top = 96
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object Edit1: TEdit
    Left = 96
    Top = 48
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 296
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 296
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 168
    Width = 185
    Height = 233
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object cmb1: TComboBox
    Left = 96
    Top = 72
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Pagi'
      'Siang')
  end
  object cmb2: TComboBox
    Left = 96
    Top = 96
    Width = 185
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Bahasa'
      'IPA'
      'IPS')
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
    Left = 24
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_kelas')
    Params = <>
    Left = 80
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 128
    Top = 8
  end
end
