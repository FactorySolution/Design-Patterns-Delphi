unit br.com.factorysolution.fanta;

interface

uses
  br.com.factorysolution.interfaces;

type
  TFanta = class(TInterfacedObject, IRefrigerante)
  private

  public
    function GetName: string;
    class function New: IRefrigerante;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TFanta }

constructor TFanta.Create;
begin

end;

destructor TFanta.Destroy;
begin

  inherited;
end;

function TFanta.GetName: string;
begin
  Result := 'Fanta';
end;

class function TFanta.New: IRefrigerante;
begin
  Result := Self.Create
end;

end.
