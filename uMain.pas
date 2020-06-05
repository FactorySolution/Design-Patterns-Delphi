unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  br.com.factorysolution.command.Interfaces;

type
  TForm4 = class(TForm)
    mmDados: TMemo;
    btnCommand: TButton;
    btnFactory: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure btnCommandClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFactoryClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    FNota : iNotaFiscal;
    procedure Exibir(Value : String);
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  br.com.factorysolution.factory,
  br.com.factorysolution.interfaces,
  br.com.factorysolution.abstractfactory,
  br.com.factorycolution.singleton,
  br.com.factorysolution.facade.impl,
  br.com.factorysolution.prototype.pessoa,
  br.com.factorysolution.prototype.interfaces,
  br.com.factorysolution.command.notafiscal;

{$R *.dfm}

procedure TForm4.btnCommandClick(Sender: TObject);
begin
  FNota.EnviarNotaFiscal;
  mmDados.Lines.Add('-------');
  FNota.EnviarNotaSemEmail
end;

procedure TForm4.btnFactoryClick(Sender: TObject);
begin
  ShowMessage(TRefrigeranteFactory.New.GetRefrigerante(trGuarana).GetName)
end;


procedure TForm4.Button1Click(Sender: TObject);
begin
  ShowMessage(TAbstractFactory.New.GetFanta.GetName);
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  TMyClass.GetInstance.Valor('adad');

  ShowMessage(TMyClass.GetInstance.Teste);
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  ShowMessage(TFacade.New.CalcularCustoProduto(200).GetValorCalculado.ToString);
end;

procedure TForm4.Button4Click(Sender: TObject);
var
  Pessoa: IPessoa;
begin
  Pessoa := TPessoa.New.SetNome('aaa').SetSobrenome('aa').Clone;

  ShowMessage(Pessoa.GetNome);

end;

procedure TForm4.Exibir(Value: String);
begin
  mmDados.Lines.Add(Value);
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  FNota := TModelNotaFiscal.New.Display(Exibir);
end;



end.
