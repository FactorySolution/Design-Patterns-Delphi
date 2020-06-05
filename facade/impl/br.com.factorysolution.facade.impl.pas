unit br.com.factorysolution.facade.impl;

interface

uses
  br.com.factorysolution.facade.interfaces;

type
  TFacade = class(TInterfacedObject, IFacade)
  private
    FMarkup: IMarkup;
    FPrecoMedio: IPrecoMedio;
    FCotacaoOnline: ICotacaoOnline;

    FPreco: Extended;
  public
    function CalcularCustoProduto(const AValorProduto: Extended): IFacade;
    function GetValorCalculado: Extended;

    class function New: IFacade;
    constructor Create;
    destructor Destroy; override;

  end;

implementation

uses
  br.com.factorysolution.facade.markup,
  br.com.factorysolution.facade.precomedio,
  br.com.factorysolution.facade.cotacao;

{ TFacade }

function TFacade.CalcularCustoProduto(const AValorProduto: Extended): IFacade;
var
  LCotacaoOnline, LPrecoMedio, LMarkup: Extended;
begin
  Result := Self;

  LCotacaoOnline := FCotacaoOnline.CotarPreco('1234567894587').GetPreco;

  LPrecoMedio := FPrecoMedio.PrecoMedio('1234567894587').GetPrecoMedio;

  LMarkup := FMarkup.CalculaMarkup(LPrecoMedio, 5).GetValorProduto;

  FPreco := LCotacaoOnline  + (LPrecoMedio - LMarkup);


end;

constructor TFacade.Create;
begin
  FMarkup := TMarkup.New;
  FPrecoMedio := TPrecoMedio.New;
  FCotacaoOnline := TCotacaoOnline.New;
end;

destructor TFacade.Destroy;
begin

  inherited;
end;

function TFacade.GetValorCalculado: Extended;
begin
  Result := FPreco;
end;

class function TFacade.New: IFacade;
begin
  Result := Self.Create;
end;

end.
