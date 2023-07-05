unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm10 = class(TForm)
    MainMenu1: TMainMenu;
    Menus1: TMenuItem;
    Siswa1: TMenuItem;
    Kelas1: TMenuItem;
    Hubungan1: TMenuItem;
    OrangTua1: TMenuItem;
    Poin1: TMenuItem;
    RiwayatPoin1: TMenuItem;
    User1: TMenuItem;
    WaliKelas1: TMenuItem;
    LaporanHasil1: TMenuItem;
    procedure Siswa1Click(Sender: TObject);
    procedure Kelas1Click(Sender: TObject);
    procedure Hubungan1Click(Sender: TObject);
    procedure OrangTua1Click(Sender: TObject);
    procedure Poin1Click(Sender: TObject);
    procedure RiwayatPoin1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure WaliKelas1Click(Sender: TObject);
    procedure LaporanHasil1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit1, Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm10.Siswa1Click(Sender: TObject);
begin
 Form1.show;
end;

procedure TForm10.Kelas1Click(Sender: TObject);
begin
 Form2.show;
end;

procedure TForm10.Hubungan1Click(Sender: TObject);
begin
 Form3.show;
end;

procedure TForm10.OrangTua1Click(Sender: TObject);
begin
 Form4.show;
end;

procedure TForm10.Poin1Click(Sender: TObject);
begin
 Form5.show;
end;

procedure TForm10.RiwayatPoin1Click(Sender: TObject);
begin
 Form6.show;
end;

procedure TForm10.User1Click(Sender: TObject);
begin
 Form7.show;
end;

procedure TForm10.WaliKelas1Click(Sender: TObject);
begin
 Form8.show;
end;

procedure TForm10.LaporanHasil1Click(Sender: TObject);
begin
 Form9.show;
end;

end.
