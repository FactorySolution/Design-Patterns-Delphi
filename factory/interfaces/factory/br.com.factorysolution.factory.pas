unit br.com.factorysolution.factory;

interface

uses
  br.com.factorysolution.interfaces;

type
  TRefrigeranteFactory = class(TInterfacedObject, IRefrigeranteFactory)

  public
    function GetRefrigerante(const ATipoRefrigerante: TTipoRefrigerante): IRefrigerante;
    class function New: IRefrigeranteFactory;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  br.com.factorysolution.fanta, br.com.factorysolution.guarana;

{ TRefrigeranteFactory }

constructor TRefrigeranteFactory.Create;
begin

end;

destructor TRefrigeranteFactory.Destroy;
begin

  inherited;
end;

function TRefrigeranteFactory.GetRefrigerante(
  const ATipoRefrigerante: TTipoRefrigerante): IRefrigerante;
begin
  case ATipoRefrigerante of
    trGuarana: Result := TGuarana.new;
    trFanta: Result :=  TFanta.new;
  end;
end;

class function TRefrigeranteFactory.New: IRefrigeranteFactory;
begin
  Result := Self.Create;
end;

end.
