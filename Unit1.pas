unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    CONVERTER: TButton;
    REAL: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DOLLAR: TEdit;
    COMPRA: TButton;
    Label4: TLabel;
    NOME: TEdit;
    REALR: TRadioButton;
    EUROR: TRadioButton;
    LIMPAR: TButton;
    Label3: TLabel;
    procedure CONVERTERClick(Sender: TObject);
    procedure COMPRAClick(Sender: TObject);
    procedure REALRClick(Sender: TObject);
    procedure EURORClick(Sender: TObject);
    procedure LIMPARClick(Sender: TObject);
    procedure NOMEChange(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  varReal : real;
  varValor: real;
  varTipo:string;



  // int , real , double , currency , string


implementation

{$R *.dfm}

procedure TForm1.COMPRAClick(Sender: TObject);
begin
  if (NOME.Text='') then
    begin
      SHOWMESSAGE('INSIRA SEU NOME!');
    end
  else
    begin
       SHOWMESSAGE(UpperCase(NOME.TEXT)+' VOCÊ COMPROU: '+DOLLAR.Text+''+#13+'VALOR COBRADO: '+REAL.TEXT);
       REAL.Text := '';
       DOLLAR.Text := '';
       NOME.Text := '';
       COMPRA.Enabled := FALSE;

    end;

end;

procedure TForm1.CONVERTERClick(Sender: TObject);
begin
    if (REALR.Checked=True) then
      begin
        varValor := 5.20;
        varTipo :='R$';
      end;

    if (DOLLAR.Text = '') then
      BEGIN
        SHOWMESSAGE('CAMPO "Quantidade em Dollar" SEM DADOS');
      END
    else
      BEGIN

        varReal := strtofloat(DOLLAR.Text) * varValor;
        REAL.Text :=varTipo+' '+floattostr(varReal);
        DOLLAR.Text := '$ '+DOLLAR.Text;
        CONVERTER.Enabled := FALSE;

      // inttostr , floattostr , strtofloat

      END;

      if (NOME.Text='') then
        begin
          COMPRA.Enabled := false;
        end
      else
        begin
            COMPRA.Enabled := true;
        end;


end;


procedure TForm1.EURORClick(Sender: TObject);
begin
  varValor := 6.32;
  varTipo :='€';
end;

procedure TForm1.LIMPARClick(Sender: TObject);
begin
  if (DOLLAR.Text='') then
    BEGIN
      SHOWMESSAGE('SEM CONTEÚDO PARA LIMPAR');
    END
  ELSE
    BEGIN
      DOLLAR.Text := '';
      REAL.Text := '';
      NOME.Text := '';
      CONVERTER.Enabled := true;
    END;

end;

procedure TForm1.NOMEChange(Sender: TObject);
begin
  if (NOME.Text='') then
    begin
      COMPRA.Enabled := false;
    end
  else
    begin
      COMPRA.Enabled := true;
    end;

end;

procedure TForm1.REALRClick(Sender: TObject);
begin
  varValor := 5.20;
  varTipo :='R$';
end;

end.
