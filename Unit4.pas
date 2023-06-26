unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    cmb1: TComboBox;
    cmb2: TComboBox;
    cmb3: TComboBox;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  Id:string;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tb_ortu values(null, "'+Edit1.Text+'", "'+Edit2.Text+'", "'+cmb1.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'", "'+Edit5.Text+'", "'+Edit6.Text+'", "'+cmb2.Text+'", "'+cmb3.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_ortu');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
  id:=ZQuery1.Fields[0].AsString;
  Edit1.Text:=ZQuery1.Fields[1].AsString;
  Edit2.Text:=ZQuery1.Fields[2].AsString;
  cmb1.Text:=ZQuery1.Fields[3].AsString;
  Edit3.Text:=ZQuery1.Fields[4].AsString;
  Edit4.Text:=ZQuery1.Fields[5].AsString;
  Edit5.Text:=ZQuery1.Fields[6].AsString;
  Edit6.Text:=ZQuery1.Fields[7].AsString;
  cmb2.Text:=ZQuery1.Fields[8].AsString;
  cmb3.Text:=ZQuery1.Fields[9].AsString;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tb_ortu set nik="'+Edit1.Text+'", nama="'+Edit2.Text+'", pendidikan="'+cmb1.Text+'", pekerjaan="'+Edit3.Text+'", telp="'+Edit4.Text+'", alamat="'+Edit5.Text+'", agama="'+Edit6.Text+'", jenis_kelamin="'+cmb2.Text+'", status="'+cmb3.Text+'" where ortu_id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_ortu');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tb_ortu where ortu_id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_ortu');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI HAPUS..');
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
cmb1.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
cmb2.Clear;
cmb3.Clear;
end;

end.
