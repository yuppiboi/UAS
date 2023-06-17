object Form1: TForm1
  Left = 198
  Top = 184
  Width = 928
  Height = 543
  Caption = 'Form1'
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
    Width = 36
    Height = 13
    Caption = 'User ID'
  end
  object Label2: TLabel
    Left = 16
    Top = 40
    Width = 17
    Height = 13
    Caption = 'NIS'
  end
  object Label3: TLabel
    Left = 16
    Top = 72
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object Label4: TLabel
    Left = 16
    Top = 104
    Width = 57
    Height = 13
    Caption = 'Nama Siswa'
  end
  object Label5: TLabel
    Left = 16
    Top = 136
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label6: TLabel
    Left = 16
    Top = 168
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object Label7: TLabel
    Left = 16
    Top = 200
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Label8: TLabel
    Left = 16
    Top = 232
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label9: TLabel
    Left = 16
    Top = 264
    Width = 63
    Height = 13
    Caption = 'Tingkat Kelas'
  end
  object Label10: TLabel
    Left = 16
    Top = 296
    Width = 38
    Height = 13
    Caption = 'Jurusan'
  end
  object Label11: TLabel
    Left = 16
    Top = 328
    Width = 48
    Height = 13
    Caption = 'Wali Kelas'
  end
  object Label12: TLabel
    Left = 16
    Top = 360
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label13: TLabel
    Left = 16
    Top = 392
    Width = 32
    Height = 13
    Caption = 'Telpon'
  end
  object Label14: TLabel
    Left = 16
    Top = 424
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object Label15: TLabel
    Left = 16
    Top = 456
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
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 136
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 136
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit4: TEdit
    Left = 136
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Edit5: TEdit
    Left = 136
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Edit1'
  end
  object Edit6: TEdit
    Left = 136
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object Edit7: TEdit
    Left = 136
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object Edit8: TEdit
    Left = 136
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit1'
  end
  object Edit9: TEdit
    Left = 136
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Edit1'
  end
  object Edit10: TEdit
    Left = 136
    Top = 296
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'Edit1'
  end
  object Edit11: TEdit
    Left = 136
    Top = 328
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'Edit1'
  end
  object Edit12: TEdit
    Left = 136
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'Edit1'
  end
  object Edit13: TEdit
    Left = 136
    Top = 392
    Width = 121
    Height = 21
    TabOrder = 12
    Text = 'Edit1'
  end
  object Edit14: TEdit
    Left = 136
    Top = 424
    Width = 121
    Height = 21
    TabOrder = 13
    Text = 'Edit1'
  end
  object Edit15: TEdit
    Left = 136
    Top = 456
    Width = 121
    Height = 21
    TabOrder = 14
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 304
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 15
  end
  object Button2: TButton
    Left = 304
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 16
  end
  object Button3: TButton
    Left = 304
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 17
  end
  object Button4: TButton
    Left = 304
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 18
  end
  object Button5: TButton
    Left = 304
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 19
  end
  object Button6: TButton
    Left = 304
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 20
  end
  object DBGrid1: TDBGrid
    Left = 304
    Top = 256
    Width = 577
    Height = 225
    TabOrder = 21
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Port = 0
    Left = 456
    Top = 16
  end
  object ZQuery1: TZQuery
    Params = <>
    Left = 528
    Top = 24
  end
  object DataSource1: TDataSource
    Left = 608
    Top = 40
  end
end
