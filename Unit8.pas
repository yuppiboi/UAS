unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    cmb1: TComboBox;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    cmb2: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id:string;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tb_walikelas values(null, "'+Edit1.Text+'", "'+Edit2.Text+'", "'+cmb1.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'", "'+Edit5.Text+'", "'+Edit6.Text+'", "'+cmb2.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_walikelas');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tb_walikelas set nip="'+Edit1.Text+'", nama="'+Edit2.Text+'", jenis_kelamin="'+cmb1.Text+'", alamat="'+Edit3.Text+'", telp="'+Edit4.Text+'", matpel="'+Edit5.Text+'", pendidikan="'+Edit6.Text+'", status="'+cmb2.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_walikelas');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tb_walikelas where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_walikelas');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI HAPUS..');
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
cmb1.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
cmb2.Clear;
end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
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
end;

end.
