unit br.com.factorysolution.facade.markup;

interface

uses
  br.com.factorysolution.facade.interfaces;

type
  TMarkup = class(TInterfacedObject, IMarkup)
  private
    FPreco: Extended;
  public
    function CalculaMarkup(const APreco: Extended;
      const APercentual: Extended): IMarkup;
    function GetValorProduto: Extended;

   class function New: IMarkup;

   constructor Create;
   destructor Destroy; override;
  end;

implementation

{ TMarkup }

function TMarkup.CalculaMarkup(const APreco, APercentual: Extended): IMarkup;
begin
  Result := Self;
  FPreco := ((APreco / APercentual) * 100) + 1.20;
end;

constructor TMarkup.Create;
begin

end;

destructor TMarkup.Destroy;
begin

  inherited;
end;

function TMarkup.GetValorProduto: Extended;
begin
  Result := FPreco;
end;

class function TMarkup.New: IMarkup;
begin
  Result := Self.Create;
end;

end.
