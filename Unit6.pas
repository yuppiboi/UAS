unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    cmb1: TComboBox;
    cmb2: TComboBox;
    cmb3: TComboBox;
    cmb5: TComboBox;
    cmb6: TComboBox;
    DBGrid2: TDBGrid;
    ZConnection2: TZConnection;
    ZQuery2: TZQuery;
    DataSource2: TDataSource;
    DBGrid3: TDBGrid;
    ZConnection3: TZConnection;
    ZQuery3: TZQuery;
    DataSource3: TDataSource;
    dtp: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id:string;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into tb_riwayatpoin values(null, "'+Edit1.Text+'", "'+cmb1.Text+'", "'+cmb2.Text+'", "'+Edit2.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'", "'+FormatDateTime('yyyy-mm-dd',dtp.Date)+'", "'+cmb5.Text+'", "'+cmb6.Text+'")');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_riwayatpoin');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TForm6.DBGrid1CellClick(Column: TColumn);
begin
  Edit3.Text:=ZQuery2.Fields[1].AsString;
  cmb3.Text:=ZQuery2.Fields[3].AsString;
  Edit4.Text:=ZQuery2.Fields[2].AsString;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
cmb1.Clear;
cmb2.Clear;
cmb3.Clear;
cmb5.Clear;
cmb6.Clear;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('delete from tb_riwayatpoin where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_riwayatpoin');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI HAPUS..');
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('update tb_riwayatpoin set nama="'+Edit1.Text+'", jenis_kelamin="'+cmb1.Text+'", kelas"'+cmb2.Text+'", nama_wali="'+Edit2.Text+'", nama_poin="'+Edit3.Text+'", jenis="'+cmb3.Text+'", bobot="'+Edit4.Text+'", semester="'+cmb5.Text+'", status="'+cmb6.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from tb_riwayatpoin');
  ZQuery1.Open;
  Showmessage('DATA BERHASIL DI EDIT..');
end;

end.
