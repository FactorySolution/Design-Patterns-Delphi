unit br.com.factorysolution.facade.precomedio;

interface

uses
  br.com.factorysolution.facade.interfaces;

type
  TPrecoMedio = class(TInterfacedObject, IPrecoMedio)
  private
    FPreco: Extended;
  public
    function GetPrecoMedio: Extended;
    function PrecoMedio(const AEan: string): IPrecoMedio;

    class function New: IPrecoMedio;

    constructor Create;
    destructor Destroy; override;

  end;

implementation

{ TPrecoMedio }

constructor TPrecoMedio.Create;
begin

end;

destructor TPrecoMedio.Destroy;
begin

  inherited;
end;

function TPrecoMedio.GetPrecoMedio: Extended;
begin
  Result := FPreco;
end;

class function TPrecoMedio.New: IPrecoMedio;
begin
  Result := Self.Create;
end;

function TPrecoMedio.PrecoMedio(const AEan: string): IPrecoMedio;
begin
  // faz alguma coisa
  FPreco := 120.00;
  Result := Self;
end;

end.
