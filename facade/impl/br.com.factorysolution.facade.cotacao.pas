unit br.com.factorysolution.facade.cotacao;

interface

uses
  br.com.factorysolution.facade.interfaces;

type
  TCotacaoOnline = class(TInterfacedObject, ICotacaoOnline)
  private
    FPreco: Extended;
  public
    function CotarPreco(const AEan: string): ICotacaoOnline;
    function GetPreco: Extended;

    class function New: ICotacaoOnline;

    constructor Create;
    destructor Destroy; override;


  end;

implementation

{ TCotacaoOnline }

function TCotacaoOnline.CotarPreco(const AEan: string): ICotacaoOnline;
begin
  // faz alguma lógica
  FPreco := 150.00;
  Result := Self;
end;

constructor TCotacaoOnline.Create;
begin

end;

destructor TCotacaoOnline.Destroy;
begin

  inherited;
end;

function TCotacaoOnline.GetPreco: Extended;
begin
  Result := FPreco;
end;

class function TCotacaoOnline.New: ICotacaoOnline;
begin
  Result := Self.Create;
end;

end.
