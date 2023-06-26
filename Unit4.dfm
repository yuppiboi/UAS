object Form4: TForm4
  Left = 780
  Top = 214
  Width = 511
  Height = 555
  Caption = 'tb_ortu'
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
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 16
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 51
    Height = 13
    Caption = 'Pendidikan'
  end
  object Label4: TLabel
    Left = 16
    Top = 80
    Width = 48
    Height = 13
    Caption = 'Pekerjaan'
  end
  object Label5: TLabel
    Left = 16
    Top = 104
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object Label6: TLabel
    Left = 16
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label7: TLabel
    Left = 16
    Top = 152
    Width = 33
    Height = 13
    Caption = 'Agama'
  end
  object Label8: TLabel
    Left = 16
    Top = 176
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label9: TLabel
    Left = 16
    Top = 200
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Edit1: TEdit
    Left = 112
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 112
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 112
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 112
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 112
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 112
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object cmb1: TComboBox
    Left = 112
    Top = 56
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'SD'
      'SMP'
      'SMA/K'
      'Sarjana')
  end
  object cmb2: TComboBox
    Left = 112
    Top = 176
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object cmb3: TComboBox
    Left = 112
    Top = 200
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Kandung'
      'Wali')
  end
  object Button1: TButton
    Left = 16
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 11
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 368
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 13
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 272
    Width = 449
    Height = 233
    DataSource = DataSource1
    TabOrder = 14
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
    Left = 264
    Top = 16
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select * from tb_ortu')
    Params = <>
    Left = 320
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 368
    Top = 16
  end
end
