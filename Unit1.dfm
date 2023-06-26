object Form1: TForm1
  Left = 279
  Top = 211
  Width = 1386
  Height = 543
  Caption = 'tb_siswa'
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
    Left = 16
    Top = 8
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object Label3: TLabel
    Left = 16
    Top = 40
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object Label4: TLabel
    Left = 16
    Top = 72
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object Label5: TLabel
    Left = 16
    Top = 104
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label6: TLabel
    Left = 16
    Top = 136
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object Label7: TLabel
    Left = 16
    Top = 168
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Label8: TLabel
    Left = 16
    Top = 200
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label9: TLabel
    Left = 16
    Top = 232
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object Label10: TLabel
    Left = 16
    Top = 264
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object Label11: TLabel
    Left = 16
    Top = 296
    Width = 48
    Height = 13
    Caption = 'Wali Kelas'
  end
  object Label12: TLabel
    Left = 16
    Top = 328
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label13: TLabel
    Left = 16
    Top = 360
    Width = 32
    Height = 13
    Caption = 'Telpon'
  end
  object Label14: TLabel
    Left = 16
    Top = 392
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object Label15: TLabel
    Left = 16
    Top = 424
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Edit1: TEdit
    Left = 136
    Top = 8
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
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 136
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edit6: TEdit
    Left = 136
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edit7: TEdit
    Left = 136
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edit8: TEdit
    Left = 136
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Edit9: TEdit
    Left = 136
    Top = 392
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Button2: TButton
    Left = 296
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 296
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 296
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 296
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 296
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 12
  end
  object DBGrid1: TDBGrid
    Left = 296
    Top = 208
    Width = 1073
    Height = 225
    DataSource = DataSource1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object dtp: TDateTimePicker
    Left = 136
    Top = 168
    Width = 121
    Height = 21
    Date = 45103.783582719910000000
    Time = 45103.783582719910000000
    TabOrder = 14
  end
  object cmb1: TComboBox
    Left = 136
    Top = 200
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object cmb2: TComboBox
    Left = 136
    Top = 232
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 16
    Items.Strings = (
      'X'
      'XI'
      'XII')
  end
  object cmb3: TComboBox
    Left = 136
    Top = 264
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 17
    Items.Strings = (
      'Bahasa'
      'IPA'
      'IPS')
  end
  object cmb4: TComboBox
    Left = 136
    Top = 424
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 18
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object Edit5: TEdit
    Left = 136
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 19
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
    Left = 400
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from tb_siswa')
    Params = <>
    Left = 464
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 528
    Top = 8
  end
end
