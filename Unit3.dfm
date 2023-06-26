object Form3: TForm3
  Left = 363
  Top = 189
  Width = 481
  Height = 355
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
    Left = 16
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Siswa ID'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 36
    Height = 13
    Caption = 'Ortu ID'
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 45
    Height = 13
    Caption = 'Status ID'
  end
  object Label4: TLabel
    Left = 16
    Top = 88
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object Edit1: TEdit
    Left = 88
    Top = 16
    Width = 177
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 40
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 88
    Top = 64
    Width = 177
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 88
    Top = 88
    Width = 177
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 16
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 280
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 168
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 9
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
    Left = 384
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from tb_hubungan')
    Params = <>
    Left = 384
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 384
    Top = 112
  end
end
