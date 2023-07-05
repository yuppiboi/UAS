unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    dtp: TDateTimePicker;
    cmb1: TComboBox;
    cmb2: TComboBox;
    cmb3: TComboBox;
    cmb4: TComboBox;
    Edit5: TEdit;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id : string;

implementation

{$R *.dfm}

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
  Edit1.Text:=ZQuery1.Fields[1].AsString;
  Edit2.Text:=ZQuery1.Fields[2].AsString;
  Edit3.Text:=ZQuery1.Fields[3].AsString;
  Edit4.Text:=ZQuery1.Fields[4].AsString;
  Edit5.Text:=ZQuery1.Fields[5].AsString;
  dtp.Date:=ZQuery1.Fields[6].AsDateTime;
  cmb1.Text:=ZQuery1.Fields[7].AsString;
  cmb2.Text:=ZQuery1.Fields[8].AsString;
  cmb3.Text:=ZQuery1.Fields[9].AsString;
  Edit6.Text:=ZQuery1.Fields[10].AsString;
  Edit7.Text:=ZQuery1.Fields[11].AsString;
  Edit8.Text:=ZQuery1.Fields[12].AsString;
  Edit9.Text:=ZQuery1.Fields[13].AsString;
  cmb4.Text:=ZQuery1.Fields[14].AsString;



end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tb_siswa values(null, "'+Edit1.Text+'", "'+Edit2.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'", "'+Edit5.Text+'", "'+FormatDateTime('yyyy-mm-dd',dtp.Date)+'", "'+cmb1.Text+'", "'+cmb2.Text+'", "'+cmb3.Text+'", "'+Edit6.Text+'", "'+Edit7.Text+'", "'+Edit8.Text+'", "'+Edit9.Text+'", "'+cmb4.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_siswa');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tb_siswa set nis="'+Edit1.Text+'",nisn="'+Edit2.Text+'", nama_siswa="'+Edit3.Text+'", nik="'+Edit4.Text+'", tempat_lahir="'+Edit5.Text+'", jenis_kelamin="'+cmb1.Text+'", tingkat_kelas="'+cmb2.Text+'", jurusan="'+cmb3.Text+'", wali_kelas="'+Edit6.Text+'", alamat="'+Edit7.Text+'", telp="'+Edit8.Text+'", hp="'+Edit9.Text+'", status="'+cmb4.Text+'" where siswa_id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_siswa');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tb_siswa where siswa_id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_siswa');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI HAPUS..');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
cmb1.Clear;
cmb2.Clear;
cmb3.Clear;
Edit6.Clear;
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
cmb4.Clear;
end;

end.
